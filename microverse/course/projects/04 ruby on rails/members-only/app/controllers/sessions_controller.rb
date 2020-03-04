class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      log_in(user)
      redirect_to user, flash: { success: 'Welcome!' }
    else
      flash.now[:danger] = 'Email or Password is incorrect.'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
    flash[:success] = 'You are logged out.'
  end
end
