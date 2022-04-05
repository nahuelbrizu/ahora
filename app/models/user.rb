class User < ApplicationRecord
  #has_secure_password
  has_many :recipes, foreign_key: "author_id"
  has_many :friendships, dependent: :destroy
  has_many :friends, -> { where "status = 'accepted'" }, through: :friendships
  has_many :requested_friends, -> { where "status = 'requested'" }, through: :friendships, source: :friend
  has_many :pending_friends, -> { where "status = 'pending'" }, through: :friendships, source: :friend
end

