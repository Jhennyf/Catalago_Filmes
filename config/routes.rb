Rails.application.routes.draw do
  devise_for :users
  resources :movies, only: [ :index, :show ]
  resources :image_movies, only: [ :index ]
  root "home#index"
end
