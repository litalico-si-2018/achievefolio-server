class PagesController < ApplicationController
  def mypage
    @comments = Comment.all.order('updated_at DESC')
    @user = User.find(2)
    # posts = @user.posts.where(achieved: true)
    # @drops = 
  end
  def users
    @comments = Comment.all.order('updated_at DESC')
  end
end
