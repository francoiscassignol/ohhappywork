class TeamsController < ApplicationController
  def index
    if current_user.role != "super_user"
      redirect_to team_surveys_path(current_user.team_id)
    else
      @well_being = Category.where(name: "Well being").first.responses.average(:rating).to_f

      @collaboration = Category.where(name: "Collaboration").first.responses.average(:rating).to_f

      @personal_growth = Category.where(name: "Personal growth").first.responses.average(:rating).to_f

      @tools = Category.where(name: "Tools & Processes").first.responses.average(:rating).to_f

      @enterprise_culture = Category.where(name: "Enterprise culture").first.responses.average(:rating).to_f

      render 'surveys/show'
    end
  end
end
