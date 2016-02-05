Rails.application.routes.draw do
  resources :clients
  resources :cities
  resources :contacts, only: [:new, :create]
  get 'welcome/index'
  root 'welcome#index'
end
