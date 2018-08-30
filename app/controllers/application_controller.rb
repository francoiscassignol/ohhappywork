class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name, :role, :company])
  end

  def after_sign_in_path_for(resource)
  		if current_user.super_user?
	  		teams_path
	  	elsif current_user.team_leader?
	  		@team = current_user.team
	  		team_surveys_path(@team)
	  	else
	  		root_path
	  	end
  end

end
