class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    render json: comment
  end

  def index
    comments = Comment.all
    render json: comments
  end

  private
    def comment_params
      params.require(:comment).permit(:name, :content, :post_id)
    end
end
