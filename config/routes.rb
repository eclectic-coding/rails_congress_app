Rails.application.routes.draw do

  root 'static_pages#home'

  devise_for :users


  # Congress resources
  resources :members, only: %i[index show]
  resources :senators, only: %i[index show destroy]
  resources :representatives, only: %i[index show]

  resources :follow_lists

end
