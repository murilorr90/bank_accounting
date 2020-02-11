Rails.application.routes.draw do
  resources :transactions
  resources :accounts
  root 'home#index'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#login', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  get 'accounts/balance', to: 'accounts#balance', as: 'balance'
end
