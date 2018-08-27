class TeamsController < ApplicationController
  def index

    @teams = Team.all

    @team = Team.first

    if current_user.role != "super_user"
      redirect_to team_surveys_path(current_user.team_id)
    else

      @well_being = Category.where(name: "Well being").first.responses.average(:rating).to_f.round(1)
      @collaboration = Category.where(name: "Collaboration").first.responses.average(:rating).to_f.round(1)
      @personal_growth = Category.where(name: "Personal growth").first.responses.average(:rating).to_f.round(1)
      @tools = Category.where(name: "Tools & Processes").first.responses.average(:rating).to_f.round(1)
      @enterprise_culture = Category.where(name: "Enterprise culture").first.responses.average(:rating).to_f.round(1)
      @global = ((@personal_growth + @well_being + @collaboration + @tools + @enterprise_culture)/5).round(1)
      render 'surveys/show'
    end
  end
end
