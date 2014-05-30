Final::Application.routes.draw do

  # Specify a custom home page
  get "/" => "trip#index"

  # Resource: Trip

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


  # Resource: Season

  # --- Create
  get "/month/new" => 'month#new'
  post "/month" => 'month#create'

  # --- Read
  get "/month" => 'month#index'
  get "/month/:id" => 'month#show'

  # -- Update
  get "/month/:id/edit" => 'month#edit'
  patch "/month/:id" => 'month#update'

  # --- Delete
  delete "/month/:id" => 'month#destroy'
end
