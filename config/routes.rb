Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  # CRUD
  # Read All
  get '/restaurants', to: 'restaurants#index', as: :restaurants
  # Create
  # One for the form
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # One for the creation
  post '/restaurants', to: 'restaurants#create'
  # Read One
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant

  # Update
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  patch '/restaurants/:id', to: 'restaurants#update'

  # Delete/Destroy
  delete '/restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants
  # You can't use these today
end
