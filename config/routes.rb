Rails.application.routes.draw do

  resources :dashboards, only: [:index]
  resources :user_interests, only: [:index, :new, :create, :destroy]

  resources :profiles, only: [:show, :update, :edit, :index] do
    resources :friend_requests, only: [:new, :create]
  end

  mount Attachinary::Engine => "/attachinary" #needed for attachinary to work

  # get 'index', to: 'friend_requests#index'

  post 'profiles', to: 'profiles#index'
  get 'pages/design_test', to: 'pages#design_test'
  get 'pages/search', to: 'pages#search', as: "search"

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }

  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

