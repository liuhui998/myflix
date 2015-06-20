class ApplicationController < ActionController::Base
  def authenticate_user!
    redirect_to sign_in_path, notice: "Please Sign in first!" unless current_user
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) unless session[:user_id].blank?
  end
  
  helper_method :current_user, :authenticate_user
  protect_from_forgery
end
