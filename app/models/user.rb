class User < ApplicationRecord
  has_many :posts

  validates :username, presence: true, uniqueness: true, length: { minimum: 1 }
end
