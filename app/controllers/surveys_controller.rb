class SurveysController < ApplicationController

  def index
  	
  	@personal_growth_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.first).each { |q| @personal_growth_responses << q.responses }
  	@personal_growth = @personal_growth_responses.flatten.pluck(:rating).sum.to_f / @personal_growth_responses.flatten.pluck(:rating).size.to_f

  	@well_being_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.find(2)).each { |q| @well_being_responses << q.responses }
  	@well_being = @well_being_responses.flatten.pluck(:rating).sum.to_f / @well_being_responses.flatten.pluck(:rating).size.to_f
  	
  	@collaboration_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.find(3)).each { |q| @collaboration_responses << q.responses }
  	@collaboration = @collaboration_responses.flatten.pluck(:rating).sum.to_f / @collaboration_responses.flatten.pluck(:rating).size.to_f

	@tools_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.find(4)).each { |q| @tools_responses << q.responses }
  	@tools = @tools_responses.flatten.pluck(:rating).sum.to_f / @tools_responses.flatten.pluck(:rating).size.to_f

  	@enterprise_culture_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.find(5)).each { |q| @enterprise_culture_responses << q.responses }
  	@enterprise_culture = @enterprise_culture_responses.flatten.pluck(:rating).sum.to_f / @enterprise_culture_responses.flatten.pluck(:rating).size.to_f
  
  	render 'surveys/show'

  end

  def show

  	@personal_growth_ratings = [] 
  	Survey.find(params[:id]).questions.where(category: Category.first).first.responses.each { |r| @personal_growth_ratings << r.rating }
  	@personal_growth = @personal_growth_ratings.sum.to_f / @personal_growth_ratings.size.to_f

  	  	@well_being_ratings = [] 
  	Survey.find(params[:id]).questions.where(category: Category.find(2)).first.responses.each { |r| @well_being_ratings << r.rating }
  	@well_being = @well_being_ratings.sum.to_f / @well_being_ratings.size.to_f

  	  	@collaboration_ratings = [] 
  	Survey.find(params[:id]).questions.where(category: Category.find(3)).first.responses.each { |r| @collaboration_ratings << r.rating }
  	@collaboration = @collaboration_ratings.sum.to_f / @collaboration_ratings.size.to_f

  	  	@tools_ratings = [] 
  	Survey.find(params[:id]).questions.where(category: Category.find(4)).first.responses.each { |r| @tools_ratings << r.rating }
  	@tools = @tools_ratings.sum.to_f / @tools_ratings.size.to_f

  	  	@enterprise_culture_ratings = [] 
  	Survey.find(params[:id]).questions.where(category: Category.find(5)).first.responses.each { |r| @enterprise_culture_ratings << r.rating }
  	@enterprise_culture = @enterprise_culture_ratings.sum.to_f / @enterprise_culture_ratings.size.to_f


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