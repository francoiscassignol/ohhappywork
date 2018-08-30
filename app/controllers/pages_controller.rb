class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
  	# raise
  	if user_signed_in?
	  	if current_user.role === "super-user"
	  		redirect_to teams_path
	  	elsif current_user.role === "team-leader"
	  		@team = current_user.team
	  		redirect_to team_surveys_path(@team)
	  	else

	  	end
	 end
  end

  def show
  end
end
