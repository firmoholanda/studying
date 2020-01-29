class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :name, presence: true, length: { maximum: 60 }
  validates :email, presence: true, length: { maximum: 300 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
end
