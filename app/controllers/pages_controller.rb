class PagesController < ApplicationController
  def mypage
    @comments = Comment.all.order('updated_at DESC')
    @user = User.find(2)
    # posts = @user.posts.where(achieved: true)
    # @drops = 

    render json: {
      "user": [
        {
          "name" => "aa",
          "id" => 1
        },
        {
          "name" => "bb",
          "id" => 2
        }
      ],
    }
  end
  def users
    @comments = Comment.all.order('updated_at DESC')
  end
end
