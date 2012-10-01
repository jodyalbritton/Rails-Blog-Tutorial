class ApplicationController < ActionController::Base
  protect_from_forgery
 
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  

  def current_ability
    @current_ability ||= Ability.new(current_user)
  end 
end
