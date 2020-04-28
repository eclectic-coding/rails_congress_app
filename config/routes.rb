Rails.application.routes.draw do
  root 'members#index'

  # Members resource
  get 'members/index'
  get 'members/show'
  get 'member/index'
  get 'member/show'

  # Static controller
  get 'static_pages/home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
