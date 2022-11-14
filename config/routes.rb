Rails.application.routes.draw do
  resources :locations
  get 'locations/new'
  get 'locations/create'
  get 'locations/update'
  get 'locations/edit'
  get 'locations/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "locations#index"
end
