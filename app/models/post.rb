class Post < ApplicationRecord
  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :title, length: { minimum: 1 }
    validates :body
  end
end
