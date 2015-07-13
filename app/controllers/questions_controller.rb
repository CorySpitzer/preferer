class QuestionsController < ApplicationController

  def index

  end

  def new
    @question = Question.new
    respond_to do |format|
      format.html
      format.js
    end
  end
end
