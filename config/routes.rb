Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "photos#index"
  

  devise_for :users

  resources :likes
  resources :follow_requests
  resources :comments
  resources :photos

  # Must be at end
  get "/:username" => "users#show", as: :user
end
