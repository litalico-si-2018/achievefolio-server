class PagesController < ApplicationController
  def mypage
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
      ]
    }
  end
  def users
    @comments = Comment.all.order('updated_at DESC')
  end
end
