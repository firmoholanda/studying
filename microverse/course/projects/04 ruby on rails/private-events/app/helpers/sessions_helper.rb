module SessionsHelper
  # Logs in the given user
  def log_in(user)
    session[:user_id] = user.id
  end

  # Returns the current logged-in user
  def current_user
    if (user_id = session[:user_id])
      @current_user ||= User.find_by(id: user_id)
    elsif (user_id = cookies.signed[:user_id])
      user = User.find_by(id: user_id)
      if user&.authenticated?(cookies[:remember_token])
        log_in user
        @current_user = user
      end
    end
  end

  # Returns true if the user is logged in, false otherwise
  def logged_in?
    !current_user.nil?
  end

  # Logs out the current user
  def log_out
    forget(current_user)
    session.delete(:user_id)
    @current_user = nil
  end

  # Remembers a user in a persistent session
  def remember(user)
    user.remember
    cookies.permanent.signed[:user_id] = user.id
    cookies.permanent[:remember_token] = user.remember_token
  end

  # Forgets a user.
  def forget(_user)
    cookies.delete(:user_id)
    cookies.delete(:remember_token)
  end

  # Redirects to a stored URL (or to the default)
  def redirect_back_or(default)
    redirect_to(flash[:forwarding_url] || default)
  end

  # Stores the URL trying to be accessed.
  def store_location
    flash[:forwarding_url] = request.url if request.get?
  end

  # Keeps the URL trying to be accessed around for one more request
  def keep_stored_location
    flash.keep(:forwarding_url)
  end
end
