class PostsController < ApplicationController
  def create
    @post = @current_user.posts.new
    @post.year = Time.now.year
    @post.month = Time.now.month
    @post.date = Time.now.day
    @post.approved_id = 2
    @post.approved = false
    @post.body = params[:body]

    @post.save


    if (@post.body.length > 10) then
      ach = Achievement.find(1)
      ach.achieved = true
      ach.update(ach_params)
    end

    # achieves = []
    # Achievement.where(type: 0).each do |a|
    #   next if UserAchievement.find_by(user_id: @current_user.id, achievement_id: a.id) # nil or Achievement
    #   ua = UserAchievement.create(user_id: @current_user.id, achievement_id: a.id)
    #   achieves << { id: ua.id }
    # end
    # if achieves.length > 0
      render json: @post
    # else
    #   render json: @post.attributes
    # end

    


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
    def post_params
      params.fetch(:post, {}).permit(:approved)
    end
    def ach_params
      params.fetch(:achievement, {}).permit(:achieved)
    end


end
