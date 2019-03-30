Rails.application.routes.draw do
  root 'items#index'
  resources :signup, only: [:new]
  resources :transactions, only: [:new, :edit]

  get 'signup/login' => 'signup#login'
end
