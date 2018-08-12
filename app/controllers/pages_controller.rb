class PagesController < ApplicationController
  def mypage
    @user = User.find(1)
    @achi = Achievement.all
    @posts = @user.posts

    # =@user.posts[0].year
    # tmp[1]=@user.posts[0].month
    # tmp[2]=@user.posts[0].date

  end
  def users
    @comments = Comment.all.order('updated_at DESC')
  end
end
