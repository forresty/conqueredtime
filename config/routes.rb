Rails.application.routes.draw do
  get 'journals/index'
  get 'journals/show'
  get 'journals/new'
  get 'journals/create'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
