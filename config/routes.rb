Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

   # resources :journals, only: [:show, :index]
   #  resources :entries, only: [:show, :index, :new, :create]
   # end

   resources :pomodoros, only: [:new, :create, :show]

  # resources :entries, only: [:show, :index, :new, :create, :update]
  #   resources :pomodoros, only: [:create, :new, :show]
  # end

   # resources :profile, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
