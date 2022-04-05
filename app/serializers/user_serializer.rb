class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :password, :last_name, :telephone_number
  has_many :recipes
  has_many :friendships

end
