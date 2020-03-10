class SessionsController < ApplicationController
  def new
    keep_stored_location
  end

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user
      log_in @user
      params[:session][:remember_me] == '1' ? remember(@user) : forget(@user)
      redirect_to events_path
    else
      flash.now[:danger] = 'invalid email, please make sure you are registered.'
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
