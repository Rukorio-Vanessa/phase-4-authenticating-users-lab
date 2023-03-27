Rails.application.routes.draw do
  resources :articles, only: [:index, :show]

  #users
  get "/me", to: "users#show"

  #sessions
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
