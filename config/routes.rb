Rails.application.routes.draw do
  resources :user_interests, only: [:index, :new, :create, :destroy]

  resources :profiles, only: [:show, :update, :edit, :index] do
    resources :friend_requests, only: [:new, :create]
  end

  get 'index', to: 'friend_requests#index'

  devise_for :users

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
