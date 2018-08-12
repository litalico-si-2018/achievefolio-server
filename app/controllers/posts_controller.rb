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

    achieves = []
    Achievement.where(type: 0).each do |a|
      next if UserAchievement.find_by(user_id: @current_user.id, achievement_id: a.id) # nil or Achievement
      ua = UserAchievement.create(user_id: @current_user.id, achievement_id: a.id)
      achieves << { id: ua.id }
    end
    if achieves.length > 0
      render json: @post.attributes.merge({
        achieves: achieves
      })
    else
      render json: @post.attributes
    end

    # render json: @post
  end

  def approved
  	@post = Post.find(params[:post_id])
    @post.approved = true
    @post.update(post_params)

    render json: @post
  end

  def index
    @posts = User.find(1).posts
    
  end
  private
    def comment_params
      params.fetch(:comment, {}).permit(:body, :type)
    end
    def post_params
      params.fetch(:post, {}).permit(:approved)
    end


end
