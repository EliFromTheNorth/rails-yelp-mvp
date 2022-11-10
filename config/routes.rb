Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "restaurants#index"

  get "restaurants/new", to: "restaurants#new"
  post "restaurants", to: "restaurants#create"
  get "restaurants/:id", to: "restaurants#show", as: :banana
  get "restaurants/:restaurant_id/reviews", to: "reviews#index", as: :reviews
  get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :cucumber
  post "restaurants/:restaurant_id/reviews", to: "reviews#create"
# line 13 not for page but for form

# ************inspiration:********
  # resources: surfers, only: [:index] do
  #   resources: surfboards
  # end
  # ==> line 15 same as: get "/surfers", to: "surfers#index"

  # dont use banana and mango, especially not for forms



end
