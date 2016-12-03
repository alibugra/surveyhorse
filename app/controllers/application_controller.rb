class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user

  helper_method :signed_in?, :current_user

  def authenticate_user
  end

  def signed_in?
    !!current_user
  end

  def require_surveyor
    if !signed_in?
      redirect_to '/'
    end
  end

  def current_user
    if @current_user
      return @current_user
    end

    if session[:user_id]
      @current_user = User.find_by_id(session[:user_id])
    end
  end

  def sign_in(user)
    session[:user_id] = user.id
  end

  def sign_out
    session[:user_id] = nil
  end
end
