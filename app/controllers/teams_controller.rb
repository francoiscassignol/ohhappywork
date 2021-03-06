class TeamsController < ApplicationController
  def index

    @teams = Team.all

    if current_user.role != "super_user"
      redirect_to team_surveys_path(current_user.team_id)
    else

      @well_being = Category.where(name: "Well being").first.responses.average(:rating).to_f.round(1)
      @collaboration = Category.where(name: "Collaboration").first.responses.average(:rating).to_f.round(1)
      @personal_growth = Category.where(name: "Personal growth").first.responses.average(:rating).to_f.round(1)
      @tools = Category.where(name: "Tools & Processes").first.responses.average(:rating).to_f.round(1)
      @enterprise_culture = Category.where(name: "Enterprise culture").first.responses.average(:rating).to_f.round(1)
      @global = ((@personal_growth + @well_being + @collaboration + @tools + @enterprise_culture)/5).round(1)

      @surveys = Survey.all
      @tools_labels = @surveys.pluck(:created_at).map { |date| date.strftime("%d/%m") }

      @tools_ratings = []
      @surveys.each { |survey| @tools_ratings << survey.average_tool_rating }

      @survey_dates = @surveys.pluck(:created_at).map { |date| date.strftime("%d/%m") }

      @overtime_global_ratings = []
      @surveys.each { |survey| @overtime_global_ratings << survey.global_rating }

      render 'surveys/global'
    end
  end
end
