class PagesController < ApplicationController
  def mypage
    @user = User.find(1)
    @achi = Achievement.all
    @posts = @user.posts

    drops = []
    @user.posts.where(approved: true).each do |d|
      drops << {
        year: d.year,
        month: d.month,
        date: d.date,
        count: @user.posts.where(approved: true).where(year: d.year).where(month: d.month).where(date: d.date).length
      }
    end
    @drops = drops.uniq
  end
  def users
    @users = User.all
  end
end
