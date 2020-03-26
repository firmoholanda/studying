module UsersHelper
  def pending?(user)
    current_user.friendships.find_by(passive_friend_id: user.id, approved: false)
  end

  def recieved?(user)
    current_user.inverse_friendships.find_by(active_friend_id: user.id, approved: false)
  end

  # Returns the Gravatar for the given user.
  def gravatar_for(user)
    gravatar_id = Digest::MD5.hexdigest(user.email.downcase)
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
    image_tag(gravatar_url, alt: user.name, class: 'gravatar')
  end
end
