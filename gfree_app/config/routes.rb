Rails.application.routes.draw do
  root to: "pages#welcome"

  resources :users, only: [:new, :show, :create]

  get "/sign_in", to: "sessions#new"

end
