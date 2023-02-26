Rails.application.routes.draw do
  get 'flights/index'
  

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :airports
  resources :flights
  # Defines the root path route ("/")
  root to: 'flights#index'
end
