class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  def home
    render '/layouts/home'
  end

  def about
    render '/layouts/about'
  end

  def contact
    render '/layouts/contact'
  end
end
