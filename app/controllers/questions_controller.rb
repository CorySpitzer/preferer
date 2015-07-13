class QuestionsController < ApplicationController

  def index
    sleep 1
    @questions = Question.paginate(page: params[:page], per_page: 30)
    respond_to do |format|
      format.html
      format.js
    end
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
