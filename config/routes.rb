Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/mypage' => 'api/pages#mypage', format: 'json'
end
