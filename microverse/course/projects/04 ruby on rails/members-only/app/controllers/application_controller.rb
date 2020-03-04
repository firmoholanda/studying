class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private

  def user_logged_in?
    return if logged_in?

    flash[:danger] = 'you must be logged in to perform that action'
    redirect_to :login
  end
end
