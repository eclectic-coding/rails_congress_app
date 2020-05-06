Rails.application.routes.draw do
  root 'static_pages#home'

  # Members resource
  resources :members

end
