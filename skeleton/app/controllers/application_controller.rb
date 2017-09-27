class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def login(user)
    @current_user = user
    session[:session_token] = user.reset_session_token!
  end

  def login_user!

  end

  def logout(user)

  end

  def logged_in?
    !!current_user
  end

  def login_redirect
    redirect_to cats_url if logged_in?
  end

  def ensure_logged_in
    unless logged_in?
      flash[:errors] = ['Please login']
      redirect_to new_session_url
    end
  end

end
