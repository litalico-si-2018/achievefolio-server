
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

for i in 1..4
	Achievement.create(
	  status: "sequence_post",
	  description: "#{30*i}文字以上の投稿を一回する",
	  achieved: false,
	  secret: false
	)
	Achievement.create(
	  status: "daily_post_count",
	  description: "一日に#{3*i}回投稿する",
	  achieved: false,
	  secret: false
	)
	Achievement.create(
	  status: "sequence_post",
	  description: "#{7*i}日連続で投稿する",
	  achieved: false,
	  secret: false
	)
end
for i in 1..4
	Achievement.create(
	  status: "sequence_post",
	  description: "#{30*i}文字以上の投稿を一回する",
	  achieved: false,
	  secret: false
	)
	Achievement.create(
	  status: "daily_post_count",
	  description: "一日に#{3*i}回投稿する",
	  achieved: false,
	  secret: false
	)
	Achievement.create(
	  status: "sequence_post",
	  description: "#{7*i}日連続で投稿する",
	  achieved: false,
	  secret: false
	)
end
for i in 1..4
	Achievement.create(
	  status: "sequence_post",
	  description: "#{30*i}文字以上の投稿を一回する",
	  achieved: false,
	  secret: false
	)
	Achievement.create(
	  status: "daily_post_count",
	  description: "一日に#{3*i}回投稿する",
	  achieved: false,
	  secret: false
	)
	Achievement.create(
	  status: "sequence_post",
	  description: "#{7*i}日連続で投稿する",
	  achieved: false,
	  secret: false
	)
end

Post.create(
  user_id: 1,
  body: "今日はデータ入力作業のやり方を学習しました。ミスがないように心がけたため、最初は慣れるまで作業が遅かったのですが、徐々に作業スピードをあげることができました。
今日は2つミスがあったので、次回はミス０にしたいです。",
  year: 2018,
  month: 7,
  date: 30,
  approved: false
)
Post.create(
  user_id: 1,
  body: "今日は名刺交換の方法を知りました。
これまでワークスでやったことのない情報だったので、戸惑どいました。
ワークスで習ったこと以外のことがきた時がとても恐いです。",
  year: 2018,
  month: 7,
  date: 31,
  approved: false
)
Post.create(
  user_id: 1,
  body: "名刺交換の場がまたありましたが、昨日の反省を活かして練習をしたため、成功することができました。
昨日は戸惑っていたけど、できた時の達成感を感じることができたので、嬉しかったです。",
  year: 2018,
  month: 8,
  date: 1,
  approved: false
)
Post.create(
  user_id: 1,
  body: "今日は先輩の方々と楽しく話すことができました。自分自身先輩に対して距離を置いていたが、実際話してみるととても優しくて先輩に対するイメージが変わりました。
これからは、僕から話しかけたいです。",
  year: 2018,
  month: 8,
  date: 2,
  approved: false
)
Post.create(
  user_id: 1,
  body: "今日は早起きに挑戦しました。いつも夜遅くに寝て、遅くに起きていたので寝不足なことがよくありました。
早起きすると、気持ちがスッキリして作業により集中することができました。",
  year: 2018,
  month: 8,
  date: 3,
  approved: false
)
Post.create(
  user_id: 1,
  body: "社会に出て色々な人たちと関わったことで、自分がどういう人間なのかがわかってきました。
目標とする先輩がいるので、その人を目指して、自分の欠点を克服したいです。",
  year: 2018,
  month: 8,
  date: 4,
  approved: false
)
Post.create(
  user_id: 1,
  body: "今日は飲み会に参加しました。
先輩にお酒を勧められましたが、私はお酒が飲めない年齢なのでしっかり断ることができました。
かなり勇気がいりましたが、今思うと言ってよかったと思います。",
  year: 2018,
  month: 8,
  date: 5,
  approved: false
)
