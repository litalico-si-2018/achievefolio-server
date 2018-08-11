class PostsController < ApplicationController
  def create
    @post = Post.new
    @post.year = Time.now.year
    @post.month = Time.now.month
    @post.date = Time.now.day
    @post.approved_id = 2
    @post.approved = false
    @post.user_id = 1
    @comment = Comment.new(comment_params)
    @comment.user_id = 1
  end

  def approve
  	
  end
  private
    def comment_params
      params.fetch(:comment, {}).permit(:body, :type)
    end


end
