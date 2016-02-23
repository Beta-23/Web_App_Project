Rails.application.routes.draw do
  root to: "pages#welcome"

  resources :users, only: [:new, :show, :create]

  get "/signin", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

end
