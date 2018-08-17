Rails.application.routes.draw do
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  devise_for :users
  resources :users, only: [:show, :index]
  get 'users/:id/dashboard', to: 'users#dashboard', as: :dashboard
  resources :lessons do
    resources :bookings, only: [:create]
  end
  resources :bookings, except: [:index, :new, :create]
end
