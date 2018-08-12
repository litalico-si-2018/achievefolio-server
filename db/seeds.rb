
User.create(
  name: "山田",
  icon: "yamada.jpg",
  role: "general"
)
User.create(
  name: "山本",
  icon: "yamamoto.jpg",
  role: "admin"
)

for i in 1..user_num do
  User.create!(name: "ユーザー#{i}", role: i%2)
  for j in 1..post_num do
    Post.create!(
      user_id: i,
      body: "aaa",
      approved_id: 2,
      approved: false,
      year: 2018,
      month: 7,
      date: 5
    )
  end
end

for i in 1..achievement_num do
  Achievement.create!(
      value: 1,
      status: 0
  	)
end
