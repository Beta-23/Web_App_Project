Rails.application.routes.draw do
  root to: "pages#welcome"

  resources :users, only: [:new, :show, :create]

  get "/signin", to: "sessions#new"
  post "/sessions", to: "sessions#create"
  delete "/logout", to: "sessions#destroy", as: "logout"

end
