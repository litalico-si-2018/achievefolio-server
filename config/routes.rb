Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/mypage' => 'api/pages#mypage', format: 'json'
  get 'pages/users' => 'api/pages#users', format: 'json'

  post 'posts' => 'api/posts#create', format: 'json'
  patch 'approve' => 'api/posts#approve', format: 'json'

  post 'comments' => 'api/comments#create', format: 'json'

  post 'achieved' => 'api/achievements#create', format: 'json'

end
