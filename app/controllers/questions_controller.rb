class QuestionsController < ApplicationController

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    respond_to do |format|
      format.html
      format.js
    end
  end

  def create
    @question = Question.create!(question_params)
    respond_to do |format|
      format.js
    end
  end

private

  def question_params
    params.require(:question).permit :option_a, :option_b
  end

end
