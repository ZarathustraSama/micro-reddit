class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 18 }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :posts
  has_many :comments
end
