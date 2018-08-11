class PostsController < ApplicationController
  def create
    @post = @current_user.posts.new
    @post.year = Time.now.year
    @post.month = Time.now.month
    @post.date = Time.now.day
    @post.approved_id = 2
    @post.approved = false

    @post.save

    @comment = @current_user.comments.new(post_id: @post.id)
    @comment.body = params[:content]

    @comment.save

    render json: @post
  end

  def approve
  	
  end
  private
    def comment_params
      params.fetch(:comment, {}).permit(:body, :type)
    end


end
