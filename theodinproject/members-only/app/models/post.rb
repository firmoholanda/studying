class Post < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :title, presence: true, length: { maximum: 50 }
  validates :body, presence: true, length: { maximum: 255 }
end
