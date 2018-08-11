# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



user_num = 3
post_num = 3
comment_num = 3
achievement_num = 3
user_achievement_num = 3


for i in 1..user_num do
  User.create!(name: "ユーザー#{i}", role: i%2)
  for j in 1..post_num do
    Post.create!(
      user_id: i,
      approved_id: 2,
      approved: false,
      year: 2018,
      month: 7,
      date: 5
    )
    for k in 1..comment_num do
      Comment.create!(
        body: "投稿",
        user_id: i,
        post_id: j,
      )
    end
  end
end



for i in 1..achievement_num do
  Achievement.create!(
  	  value: 1
  	)
end

for i in 1..user_achievement_num do
  UserAchievement.create!(
  	  user_id: 1
  	)
end

