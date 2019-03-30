Rails.application.routes.draw do
  root 'items#index'
  resources :signup, only: [:new]
  resources :transactions, only: [:new, :edit]
end
