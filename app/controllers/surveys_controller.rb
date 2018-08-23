class SurveysController < ApplicationController

  def index
  	
  	@personal_growth_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.first).each { |q| @personal_growth_responses << q.responses }
  	@personal_growth = @personal_growth_responses.flatten.pluck(:rating).sum.to_f / @personal_growth_responses.flatten.pluck(:rating).size.to_f

  	@well_being_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.first).each { |q| @well_being_responses << q.responses }
  	@well_being = @well_being_responses.flatten.pluck(:rating).sum.to_f / @well_being_responses.flatten.pluck(:rating).size.to_f
  	
  	@collaboration_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.first).each { |q| @collaboration_responses << q.responses }
  	@collaboration = @collaboration_responses.flatten.pluck(:rating).sum.to_f / @collaboration_responses.flatten.pluck(:rating).size.to_f

	@tools_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.first).each { |q| @tools_responses << q.responses }
  	@tools = @tools_responses.flatten.pluck(:rating).sum.to_f / @tools_responses.flatten.pluck(:rating).size.to_f

  	@enterprise_culture_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.first).each { |q| @enterprise_culture_responses << q.responses }
  	@enterprise_culture = @enterprise_culture_responses.flatten.pluck(:rating).sum.to_f / @enterprise_culture_responses.flatten.pluck(:rating).size.to_f
  
  	render 'surveys/show'

  end

  def show

  end

  def create

  end
end


    # @well_being = Category.where(name: "Well being").first.responses.average(:rating).to_f

    # @collaboration = Category.where(name: "Collaboration").first.responses.average(:rating).to_f

    # @personal_growth = Category.where(name: "Personal growth").first.responses.average(:rating).to_f

    # @tools = Category.where(name: "Tools & Processes").first.responses.average(:rating).to_f

    # @enterprise_culture = Category.where(name: "Enterprise culture").first.responses.average(:rating).to_f

    # render 'surveys/show'

    #<ActiveRecord::Relation [#<Category id: 1, name: "Personal growth", created_at: "2018-08-23 12:12:35", updated_at: "2018-08-23 12:12:35">, #<Category id: 2, name: "Well being", created_at: "2018-08-23 12:12:36", updated_at: "2018-08-23 12:12:36">, #<Category id: 3, name: "Collaboration", created_at: "2018-08-23 12:12:36", updated_at: "2018-08-23 12:12:36">, #<Category id: 4, name: "Tools & Processes", created_at: "2018-08-23 12:12:36", updated_at: "2018-08-23 12:12:36">, #<Category id: 5, name: "Enterprise culture", created_at: "2018-08-23 12:12:36", updated_at: "2018-08-23 12:12:36">]>