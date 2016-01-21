Rails.application.routes.draw do
  resources :clients
  resources :categories
  get 'welcome/index'
  root 'welcome#index'
end
