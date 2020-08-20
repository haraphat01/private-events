Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'users/:id', to: 'users#show', :as => :user
  resources :events, only: [:new, :index, :show, :create]
  resources :invites, only: [:new, :create]
  root to: "events#index"

  # get 'events/index'
  # get 'events/new'
  # get 'events/show'
  # get 'users/new'
  # get 'users/create'
  # get 'users/show'
  #  devise_for :users
  #  root to: "events#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
