Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "photos#index"
  get "/:username" => "users#show", as: :user

  devise_for :users

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos
  resources :users, only: :show
end
