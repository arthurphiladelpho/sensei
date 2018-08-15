Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  devise_for :users
  resources :users, only: [:show, :index]
  resources :lessons do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:index, :new, :create]
end
