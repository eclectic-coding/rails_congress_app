Rails.application.routes.draw do
  # get 'users/new'
  root 'static_pages#home'
  get '/signup', to: 'users#new'

  # Members resource
  resources :users
  resources :members, only: %i[index show]
  resources :senators, only: %i[index show]
  resources :representatives, only: %i[index show]

end
