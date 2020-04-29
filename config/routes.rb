Rails.application.routes.draw do
  root 'members#index'

  # Members resource
  resources :members, only: %i[index show]

  # Senate resources
  resources :senate, only: [:index]

end
