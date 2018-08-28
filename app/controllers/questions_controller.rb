class QuestionsController < ApplicationController
  def show

    @question = Question.find(params[:id])
    @rating = @question.responses.pluck(:rating).sum.to_f / @question.responses.pluck(:rating).size.to_f
    @type = get_partial_name
    @survey = Survey.find(@question.survey_id)
  end

  private

  def get_partial_name
    @question.category.name.downcase.gsub(" ", "_").gsub("&_", "and_")
  end
end
