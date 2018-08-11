# Achievefolio API

## API list
|エンドポイント|HTTPメソッド|説明|
|---|---|---|
|/pages/mypage|`GET`||
|/pages/users|`GET`||
|/posts|`GET`|pollingする。超後回しなところ|
|/posts|`POST`|「今日何をしましたか？」のところ。`post`と初期`comment`を作成|
|/comments|`POST`|`post`に対してコメントする|
|/approve|`PATCH/PUT`|`post`を承認する|
|/achieved|`POST`|〇月〇〇日をクリックしたら達成のやつ|
|/clip||あとで時間あったら|

## 共通事項
### Header
```
achievefolio-user-id: (Integer)
```
### 何かを達成したとき
```
{
  "user": {(User)},
  ...,
  "achieved": {
    "id": (Integer)
  }
}
```

## [API] Pages Mypage
### Request
#### Endpoint
> `GET` /pages/mypage
#### Parameters
なし

### Response
```
{
  "user": { (User) },
  "drops": [
    ...(Drop)
  ],
  "achievements": [
    ...(Achievement)
  ],
  "posts": [
    ...(Post)
  ]
}
```

## [API] Pages Users
### Request
#### Endpoint
> `GET` /pages/users
#### Parameters
なし
### Response
```
{
  "user": { (User) },
  "users": [
    ...(User)
  ]
}
```

## [API] Post Index
### Request
#### Endpoint
> `GET` /posts
#### Parameters
なし
### Response
```
{
  "posts": [
    ...(Post)
  ]
}
```

## [API] Post Create
### Request
#### Endpoint
> `POST` /posts
#### Parameters
```
{
  "content": (String)
}
```
#### Response
```
{
  // none (何か達成項目あれば)
}
```

## [API] Comments Post
### Request
#### Endpoint
> `POST` /comments
#### Parameters
```
{
  "post_id": (Integer),
  "content": (String)
}
```
### Response
```
{
  // none (何か達成項目あれば)
}
```

## [API] Approve
### Request
#### Endpoint
> `PATCH/PUT` /approve
#### Parameters
```
{
  "post_id": (Integer)
}
```
### Response
```
  // none (何か達成項目あれば)
```

## [API] Achieved
### Request
#### Endpoint
> `POST` /achieved
#### Parameters
```
{
  "achievement_id": (Integer)
}
```
### Response
```
  // none (何か達成項目あれば)
```


## [Object] User
```
{
  "id": (Integer),
  "name": (String),
  "icon": (String),
  "role": (String) // "admin" or "general"
}
```

## [Object] Drop
```
{
  "count": (Integer),
  "year": (Integer),
  "month": (Integer),
  "date": (Integer),
  "new": (Boolean) // 今まででコップに注がれるアニメーションを見たことがあるかどうか
}
```

## [Object] Achievement
```
{
  "id": (Integer),
  "type": (String),
  "achieved": (Boolean),
  "icon": (String),
  "secret": (Boolean),
  "description": (String)
}
```

## [Object] Post
```
{
  "id": (Integer),
  "comments": [
    ...(Comment)
  ],
  "approved": (Boolean),
  "mine": (Boolean) //自分のPostかどうか
}
```

## [Object] Comment
```
{
  "id": (Integer),
  "type": (String), //"post_content" or "comment"
  "body": (String)
}
```
