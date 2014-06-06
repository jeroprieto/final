Final::Application.routes.draw do

  # Specify a custom home page
  get "/" => "trip#index"

  # Sign-In and Sign-Out

  get "/logout" => 'sessions#logout'
  get "/login" => 'sessions#login'
  post "/authenticate" => 'sessions#authenticate'

  # Resource: Users

  # --- Create
  get "/users/new" => 'users#new'
  post "/users" => 'users#create'

  # --- Read
  get "/users" => 'users#index'
  get "/users/:id" => 'users#show'

  # -- Update
  get "/users/:id/edit" => 'users#edit'
  patch "/users/:id" => 'users#update'

  # --- Delete
  delete "/users/:id" => 'users#destroy'

    # Resource: Reviews

  # --- Create
  get "/reviews/new" => 'reviews#new'
  post "/reviews" => 'reviews#create'

  # --- Read
  get "/reviews" => 'reviews#index'
  get "/reviews/:id" => 'reviews#show'

  # -- Update
  get "/reviews/:id/edit" => 'reviews#edit'
  patch "/reviews/:id" => 'reviews#update'

  # --- Delete
  delete "/reviews/:id" => 'reviews#destroy'

   # Resource: Month

  # --- Create
  get "/trip/new" => 'trip#new'
  post "/trip" => 'trip#create'

  # --- Read
  get "/trip" => 'trip#index'
  get "/trip/:id" => 'trip#show'

  # -- Update
  get "/trip/:id/edit" => 'trip#edit'
  patch "/trip/:id" => 'trip#update'

  # --- Delete
  delete "/trip/:id" => 'trip#destroy'

  
  # Resource: Location

  # --- Create
  get "/location/new" => 'location#new'
  post "/location" => 'location#create'

  # --- Read
  get "/location" => 'location#index'
  get "/location/:id" => 'location#show'

  # -- Update
  get "/location/:id/edit" => 'location#edit'
  patch "/location/:id" => 'location#update'

  # --- Delete
  delete "/location/:id" => 'location#destroy'


  # Resource: Months

  # --- Create
  get "/months/new" => 'months#new'
  post "/months" => 'months#create'

  # --- Read
  get "/months" => 'months#index'
  get "/months/:id" => 'months#show'

  # -- Update
  get "/months/:id/edit" => 'months#edit'
  patch "/months/:id" => 'months#update'

  # --- Delete
  delete "/months/:id" => 'months#destroy'


end
