class ResponsesController < ApplicationController
 def new
   # response belongs to questio, question belongs to survey
   # if we want all question, find the suvey and fetch all the questions    @question = Question.find(params[:question_id])
   @survey = Survey.find(params[:survey_id])
   @questions = []

   @survey.questions.each do |question|
     @questions << question
   end
 end

 def create
   # receive a bunch of fields in params and create a bunch of responses
   # we want -> question id for each question, the rating and review for that question
   # out of this, create a response for each question
   # { response_1: { question_id: 15 ,rating: 5, review: "" }, response_2 }

   extract_responses.each do |response|
     new_response = Response.new(rating: response[:rating])
     new_response.user = current_user
     # directly set so that we avoid triggering an SQL query
     new_response.question = Question.find(response[:question_id])
     saved = new_response.save
   end

   @survey = Survey.find(params[:survey_id])
   @survey.review = params[:review]
   @survey.save!

   redirect_to page_show_path
 end

private

 def response_params
   params.require(:response).permit(:rating, :question, :user)
 end

 def extract_responses
   params.slice(:response_1, :response_2, :response_3, :response_4, :response_5).values
 end

end
