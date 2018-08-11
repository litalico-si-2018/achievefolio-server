Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/mypage' => 'pages#mypage', format: 'json'
  get 'pages/users' => 'pages#users', format: 'json'

  post 'posts' => 'posts#create', format: 'json'
  patch 'approve' => 'posts#approve', format: 'json'

  post 'comments' => 'comments#create', format: 'json'

  post 'achieved' => 'achievements#create', format: 'json'

end
