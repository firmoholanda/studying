class FriendshipsController < ApplicationController
  before_action :authenticate_user!

  def new
     @friendship = Friendship.new
  end

  def create
    user = User.find(params[:id])
    friendship = current_user.friendships.create(passive_friend_id: user.id, approved: false)

    if friendship.save
      redirect_to request.referrer, notice: "friend request was sent."
    else
      redirect_to :back, alert: "friend request failed."
    end
    
  end

  def index
    @friendships = current_user.friendships
    @inverse_friendships = current_user.inverse_friendships
  end

  def update
    active_friend = User.find(params[:id])
    friendship = current_user.inverse_friendships.find_by(active_friend_id: active_friend.id)
    friendship.update(approved: 'true')
    friendship.save
    redirect_to request.referrer
  end

  def destroy
    sender = params[:sender.id]
    reject_request(sender)
  end
end
