Rails.application.routes.draw do
  devise_for :users
  resources :movies do
    resources :comments
  end
  resources :categories, only: [ :new, :create ]
  resources :image_movies, only: [ :index ]
  resources :users
  root "movies#index"
end
