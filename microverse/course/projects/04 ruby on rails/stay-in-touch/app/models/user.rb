class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true, length: { maximum: 50 }

  has_many :posts
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

  has_many :friendships, foreign_key: :active_friend_id
  has_many :inverse_friendships, class_name: :Friendship, foreign_key: :passive_friend_id

  default_scope -> { order(name: :asc) }

  def reject_request(sender)
    friendship = inverse_friendships.find { |f| f.active_friend == sender }
    friendship.destroy
  end

  def friend_with?(user)
    condition1 = inverse_friendships.find_by(active_friend_id: user.id, approved: true)
    condition2 = friendships.find_by(passive_friend_id: user.id, approved: true)
    return true if condition1 || condition2
  end
end
