Rails.application.routes.draw do
  root to: 'pages#home'
  resources :pages, only: :about
  devise_for :users
  resources :users, only: [:show, :index]
  resources :lessons
end
