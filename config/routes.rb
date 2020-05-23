Rails.application.routes.draw do
  root 'static_pages#home'

  # Members resource
  # resources :members, only: %i[index show]
  resources :senators, only: %i[index show]
  resources :representatives, only: %i[index show]

end
