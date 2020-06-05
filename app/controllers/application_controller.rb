class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  # helper_method :is_admin?

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  end

  def signed_in?
    !current_user
  end

  def authorized
  
      flash[:alert] = "You aren't authorized to visit that page. Please sign in"
      redirect_to signin_path unless signed_in?
 
  end

  # def is_admin?
  #   current_user && current_user.admin
  # end

  # def authorized_admin
  #   current_user.admin === false
  #   flash[:alert] = "You aren't authorized to visit that page. Admin only!"
  #   redirect_to signin_path unless is_admin?
  # end
end
