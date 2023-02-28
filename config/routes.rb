Rails.application.routes.draw do

  

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :airports
  resources :flights
  resources :bookings
  # Defines the root path route ("/")
  root to: 'flights#index'
end
