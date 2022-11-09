Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "restaurants#index"

  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show", as: :banana
  get "restaurants/:id/reviews", to: "reviews#index", as: :mango
  get "restaurants/:id/reviews/new", to: "reviews#new", as: :cucumber
  post "restaurants/:id/reviews", to: "reviews#create"

# ************inspiration:********
  # resources: surfers, only: [:index] do
  #   resources: surfboards
  # end
  # ==> line 15 same as: get "/surfers", to: "surfers#index"



end
