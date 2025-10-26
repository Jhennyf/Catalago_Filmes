Rails.application.routes.draw do
  devise_for :users
  resources :movies
  resources :categories, only: [ :new, :create ]
  resources :image_movies, only: [ :index ]
  resources :users
  root "movies#index"
end
