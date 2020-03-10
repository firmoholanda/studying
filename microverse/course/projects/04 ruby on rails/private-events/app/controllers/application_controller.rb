class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  include SessionsHelper

  private

  # Confirms a logged in user.
  def logged_in_user
    return if logged_in?

    store_location
    flash[:danger] = 'please log in.'
    redirect_to login_url
  end

  # Confirms a current user as the host of the target event or invite.
  def host_user
    @event = current_user.events_as_host.find_by(id: params[:id])
    @event ||= current_user.events_as_host.find_by(id: params[:event_id])
    return unless @event.nil?

    flash[:danger] = 'access denied: you are not the host.'
    redirect_to root_url
  end

  # Confirms a current user as a guest of the target invite.
  def guest_user
    return if current_user.id == params[:user_id].to_i

    flash[:danger] = 'access denied: you are not the correct user.'
    redirect_to root_url
  end

  # Confirms a current user as a host or guest of the target invite.
  def host_or_guest_user
    # First line guards against no_method errors by ensuring invite exists.
    redirect_to root_url unless (@invite = Invite.find_by(id: params[:id]))
    host_or_guest = current_user.events_as_host.find_by(id: @invite.event_id)
    host_or_guest ||= (current_user.id == @invite.user_id)
    redirect_to root_url unless host_or_guest
  end
end
