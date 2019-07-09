Rails.application.routes.draw do
  get 'entries/index'
  get 'entries/show'
  get 'entries/new'
  get 'entries/create'
  get 'journals/index'
  get 'journals/show'
  get 'journals/new'
  get 'journals/create'
  devise_for :users
  root to: 'pages#home'

  resources :journals, only: [:show, :index, :new, :create] do
    resources :entries, only: [:index, :new, :create]
  end


  resources :milestones do
    resources :pomodoros, only: [:new, :create]
  end


  resources :pomodoros, only: [:show]
  resources :profiles, only: [:show, :edit, :update]
  resources :entries, only: [:show]



   # resources :profile, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
