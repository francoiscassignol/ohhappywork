class QuestionsController < ApplicationController
  def show
    @question = Question.find(params[:id])
    @rating = @question.responses.pluck(:rating).sum.to_f / @question.responses.pluck(:rating).size.to_f

  end
end
