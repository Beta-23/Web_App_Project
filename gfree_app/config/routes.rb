Rails.application.routes.draw do
  root to: "pages#welcome"

  resources :users, only: [:new, :show, :create]
  resources :type_allegry, only: [:show]

  get "/signin", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"
  get "/search",  to: "yelp#search", as: "search"

end
