Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :roles, only: %i[index show new create] do
    resources :bookings, only: %i[new create]
  end
  resources :bookings, only: %i[index update]
  resources :users, only: %i[show edit update]
  namespace :owner do
    resources :bookings, only: :index
  end
end
