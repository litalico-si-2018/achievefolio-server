class PagesController < ApplicationController
  def mypage
    @user = User.find(1)
    # posts = @user.posts.where(achieved: true)
    # @drops = 

    # render
    #     render json: {
    #   "user": [
    #     {
    #       "name" => "aa",
    #       "id" => 1
    #     },
    #     {
    #       "name" => "bb",
    #       "id" => 2
    #     }
    #   ],
    #   "comment":
    #     @comments.map {|f|
    #       [id: f.id,c: f.body]
    #     }
    # }
  end
  def users
    @comments = Comment.all.order('updated_at DESC')
  end
end
