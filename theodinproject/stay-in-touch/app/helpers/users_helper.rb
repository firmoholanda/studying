module UsersHelper
  def pending?(user)
    current_user.friendships.find_by(passive_friend_id: user.id, approved: false)
  end
  def recieved?(user)
    current_user.inverse_friendships.find_by(active_friend_id: user.id, approved: false)
  end
end