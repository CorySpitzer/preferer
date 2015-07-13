class CommentsController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    @comment = Comment.create(comment_params)
    @question.comments << @comment
    respond_to do |format|
      format.js
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:author, :text)
  end
end
