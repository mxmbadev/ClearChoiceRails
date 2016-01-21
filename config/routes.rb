Rails.application.routes.draw do
  resources :clients
  resources :cities
  get 'welcome/index'
  root 'welcome#index'
end
