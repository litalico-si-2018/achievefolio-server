class PagesController < ApplicationController
  def mypage
    @user = User.find(1)
    @achi = Achievement.all
    @posts = @user.posts

    # @drops = []
    # @user.posts.each do |d|
    #   if @drops.where(year: d.year).where(month: ) then

    #   end
    # end


    # =@user.posts[0].year
    # tmp[1]=@user.posts[0].month
    # tmp[2]=@user.posts[0].date

  end
  def users
    @users = User.all
  end
end
