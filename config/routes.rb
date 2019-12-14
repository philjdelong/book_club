Rails.application.routes.draw do
  # resources :books, only: :index
  # resources :authors, only: :show do
  # resources :books, only: [:new, :create]

  get '/books', to: "books#index"

  get '/authors/:id', to: "authors#show"
end
