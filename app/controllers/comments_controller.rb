class CommentsController < ApplicationController
  def create
  	post = Post.find(params[:post_id])
    @comment = @current_user.comments.new(post_id: params[:post_id])
    @comment.body = params[:content]
    if @current_user.role == 0
    	@comment.type = 0
    else
    	@comment.type = 1
    end

    @comment.save

    render json: @comment

  end
end
