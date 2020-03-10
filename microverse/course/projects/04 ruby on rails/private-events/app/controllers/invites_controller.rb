class InvitesController < ApplicationController
  before_action :logged_in_user
  before_action :host_user, only: %i[new create]
  before_action :guest_user, only: %i[index edit update]
  before_action :host_or_guest_user, only: :destroy

  def index
    @user = User.find_by(id: params[:user_id])
    @invites = @user.invites
  end

  def new
    @users = User.all
    @event = Event.find_by(id: params[:event_id])
  end

  def create
    @event = Event.find_by(id: params[:event_id])
    invites = []
    params[:user_ids].each do |user_id, value|
      invites << @event.invites.build(user_id: user_id) if value == '1'
    end
    if invites.any?(&:invalid?)
      render :new
    else
      invites.each(&:save)
      i_l = invites.length
      flash[:success] = "#{i_l} " + 'invite'.pluralize(i_l) + ' sent!'
      redirect_to @event
    end
  end

  def edit
    @user = User.find_by(id: params[:user_id])
    @invite = Invite.find_by(id: params[:id])
    @event = @invite.event
  end

  def update
    @user = User.find_by(id: params[:user_id])
    @invite = Invite.find_by(id: params[:id])
    if @invite.update_attributes(update_invite_params)
      flash[:success] = 'reply updated'
      redirect_to @user
    else
      render :edit
    end
  end

  def destroy
    @invite.destroy
    flash[:success] = 'invite canceled'
    redirect_to request.referrer || root_url
  end

  private

  def update_invite_params
    params.require(:invite).permit(:reply)
  end
end
