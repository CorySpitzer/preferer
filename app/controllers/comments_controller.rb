class CommentsController < ApplicationController

  def index

  end

  def create
    @question = Question.find(params[:question_id])
    @comment = Comment.create(comment_params)
    @question.comments << @comment
    if current_user
      current_user.comments << @comment
    else
      anon = User.find_by email: 'anon@anon.who'
      anon.comments << @comment
    end
    respond_to do |format|
      format.html
      format.js
    end
  end


  private
  def comment_params
    params.require(:comment).permit(:text)
  end

end
