Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # authentication
  post "/users" => "users#create"

  post "/sessions" => "sessions#create"

  # products
  get "/products" => "products#index"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  patch "/products/:id" => "products#update"
  delete "products/:id" => "products#destroy"

  # cartedproducts
  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
  patch "/carted_products/:id" => "carted_products#update"
  delete "carted_products/:id" => "carted_products#destroy"

  # orders
  post "/orders/" => "orders#create"
  get "/orders" => "orders#index"
  get "orders/:id" => "orders#show"

  # artists
  get "/artists" => "artists#index"
end
