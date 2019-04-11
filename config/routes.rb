Rails.application.routes.draw do
  root 'items#index'
  resources :mypages, only: [:index]
  resources :signup, only: [:new, :login] do
    collection do
      get 'login'
    end
  end
  resources :logout, only: [:show, :destroy]
  resources :transactions, only: [:new, :edit]
  resources :identification, only: [:edit]
  resources :profile, onry: [:edit]
  resources :sales, only: [:new]
  resources :items, only: [:show]
end
