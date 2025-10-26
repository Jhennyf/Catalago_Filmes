Rails.application.routes.draw do
  devise_for :users
  resources :movies
  resources :image_movies, only: [ :index ]
  root "movies#index"
end
