Rails.application.routes.draw do
  devise_for :users
  resources :clients do
    resources :logs
  end
  resources :cities
  resources :homes
  resources :contacts
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
