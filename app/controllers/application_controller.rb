class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user, :login?

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def login?
    !!current_user
  end

  def require_login
    if !login?
      redirect_to root_path, notice: "Debes de estar conectado para acceder a estos contenidos"
    end
  end
end
