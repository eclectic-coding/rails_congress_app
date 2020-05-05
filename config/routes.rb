Rails.application.routes.draw do
  root 'members#index'

  # Members resource
  resources :members

  # Senate resources
  resources :senate, only: [:index]

end
