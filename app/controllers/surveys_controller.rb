class SurveysController < ApplicationController

  def index

  	@personal_growth_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.first).each { |q| @personal_growth_responses << q.responses }
  	@personal_growth = @personal_growth_responses.flatten.pluck(:rating).sum.to_f / @personal_growth_responses.flatten.pluck(:rating).size.to_f

  	@well_being_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.where(name: "Well being")).each { |q| @well_being_responses << q.responses }
  	@well_being = @well_being_responses.flatten.pluck(:rating).sum.to_f / @well_being_responses.flatten.pluck(:rating).size.to_f

  	@collaboration_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.where(name: "Collaboration")).each { |q| @collaboration_responses << q.responses }
  	@collaboration = @collaboration_responses.flatten.pluck(:rating).sum.to_f / @collaboration_responses.flatten.pluck(:rating).size.to_f

	@tools_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.where(name: "Tools & Processes")).each { |q| @tools_responses << q.responses }
  	@tools = @tools_responses.flatten.pluck(:rating).sum.to_f / @tools_responses.flatten.pluck(:rating).size.to_f

  	@enterprise_culture_responses = []
  	Team.find(params[:team_id]).questions.where(category: Category.where(name: "Enterprise culture")).each { |q| @enterprise_culture_responses << q.responses }
  	@enterprise_culture = @enterprise_culture_responses.flatten.pluck(:rating).sum.to_f / @enterprise_culture_responses.flatten.pluck(:rating).size.to_f

  	render 'surveys/show'

  end

  def show

  	@personal_growth_ratings = []
  	Survey.find(params[:id]).questions.where(category: Category.first).first.responses.each { |r| @personal_growth_ratings << r.rating }
  	@personal_growth = @personal_growth_ratings.sum.to_f / @personal_growth_ratings.size.to_f

  	@well_being_ratings = []
  	Survey.find(params[:id]).questions.where(category: Category.where(name: "Well being")).first.responses.each { |r| @well_being_ratings << r.rating }
  	@well_being = @well_being_ratings.sum.to_f / @well_being_ratings.size.to_f

  	@collaboration_ratings = []
  	Survey.find(params[:id]).questions.where(category: Category.where(name: "Collaboration")).first.responses.each { |r| @collaboration_ratings << r.rating }
  	@collaboration = @collaboration_ratings.sum.to_f / @collaboration_ratings.size.to_f

  	@tools_ratings = []
  	Survey.find(params[:id]).questions.where(category: Category.where(name: "Tools & Processes")).first.responses.each { |r| @tools_ratings << r.rating }
  	@tools = @tools_ratings.sum.to_f / @tools_ratings.size.to_f

  	@enterprise_culture_ratings = []
  	Survey.find(params[:id]).questions.where(category: Category.where(name: "Enterprise culture")).first.responses.each { |r| @enterprise_culture_ratings << r.rating }
  	@enterprise_culture = @enterprise_culture_ratings.sum.to_f / @enterprise_culture_ratings.size.to_f

  end

# Pour le bouton, passer un argument team
  def create

    @personal_growth_question_text = ["I feel like I can voice my opinion","I have the opportunity to grow within the organization","My organization celebrates team accomplishments as well as personal success"]
    @well_being_question_text = ["My direct manager cares about my well-being and support me when i am dealing with personal issues","I have the flexibility to take time off when I need to","I feel that I can maintain a healthy balance between work and my personal life"]
    @collaboration_question_text = ["I can count on my colleagues when I need help", "I feel like I am part of a team","Communication among the team is honest and transparent"]
    @tools_question_text = ["I  have access to the resources needed to do my work properly","The processes and tools provided are relevant  and helpful to accomplish my work","I am satisfied with the level of comfort and safety in my physical workplace"]
    @enterprise_culture_question_text = ["Leaders demonstrate  a vision that motivates me","I understand how my work contributes to the goals of my organization","I consider myself an ambassador for my organization"]

    @survey = Survey.create!(team: Team.find(params[:team_id]))
    Question.create!(category: Category.first, text: @personal_growth_question_text.sample, survey: @survey )
    Question.create!(category: Category.find[2], text: @well_being_question_text.sample, survey: @survey )
    Question.create!(category: Category.find[3], text: @collaboration_question_text.sample, survey: @survey )
    Question.create!(category: Category.find[4], text: @tools_question_text.sample, survey: @survey )
    Question.create!(category: Category.find[5], text: @enterprise_culture_question_text.sample, survey: @survey )
    end
end




# categories.each do |category_name|
#   # create! categories
#   category = Category.create!(name: category_name)
#   # filling the surveys with category and questions
#   Survey.all.each do |survey|
#     question = Question.create!(category: category, text: "Are you happy?", survey: survey )
#     # giving 2 responses to the questions
#     Response.create!(rating: 5, question: question, user: survey.team.users.all.sample)
#     Response.create!(rating: 4, question: question, user: survey.team.users.all.sample)
#   end
# end




