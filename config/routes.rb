Rails.application.routes.draw do
  get 'events/index'
  get 'events/new'
  get 'events/show'
  get 'users/new'
  get 'users/create'
  get 'users/show'
   devise_for :users
   root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
