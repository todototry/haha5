class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def current_ability
    @current_ability ||= Ability.new(current_user,request.remote_ip)
  end

  def current_user
    if session[:user] != nil
      return session[:user] 
    else
      nil
    end
  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to login_url,:alert => exception.message,:from =>"#{exception.subject}/#{exception.action}"
end



end

