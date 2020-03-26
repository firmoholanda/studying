module FriendshipsHelper
  def friend_list
    @friend_list = current_user.friendships.map { |friendship| friendship.passive_friend if friendship.approved }
    @friend_list += current_user.inverse_friendships.map do |friendship|
      friendship.active_friend if friendship.approved
    end
    @friend_list << current_user
    @friend_list.compact
  end

  def friend?(user)
    friend_list.include?(user)
  end
end
