class PagesController < ApplicationController
  def mypage
    @user = User.find(1)
    @achi = Achievement.all
    @posts = Post.all
  end
  def users
    @comments = Comment.all.order('updated_at DESC')
  end
end
