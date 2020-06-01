Rails.application.routes.draw do
  # get 'users/new'
  root 'static_pages#home'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets, only: %i[new edit create update]
  resources :members, only: %i[index show]
  resources :senators, only: %i[index show]
  resources :representatives, only: %i[index show]

end
