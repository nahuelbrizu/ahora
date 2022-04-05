class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User', foreign_key: 'friend_id'
  scope :friends, -> { where("status = 'accepted'", true) }
  scope :not_friends, -> { where("status = 'accepted'", false) }

  attribute :status, :string, default: 'requested'
  after_create :create_inverse
  # - VALIDATIONS
  validates_presence_of :user_id, :friend_id, :status
  validate :user_is_not_equal_friend
  validates_uniqueness_of :user_id, scope: :friend_id
  after_destroy :destroy_inverse

   private

  def self.accept(user, friend)
    transaction do
      accepted_at = Time.now
      accept_one_side(user, friend, accepted_at)
      accept_one_side(friend, user, accepted_at)
    end
  end

  def self.accept_one_side(current_user, friend, accepted_at)
    request = find_by_user_id_and_friend_id(current_user, friend)
    request.status = 'accepted'
    request.accepted_at = accepted_at
    request.save!
  end

  def create_inverse
    self.class.create(user_id: self.friend.id, friend_id: self.user.id, status: 'pending')
  end

  def destroy_inverse
    self.class.delete_by(user_id: self.friend.id, friend_id: self.user.id)
  end

  def user_is_not_equal_friend
    errors.add(:friend, "can't be the same as the user") if user == friend
  end
end