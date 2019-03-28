Rails.application.routes.draw do
  root 'items#index'
  resources :signup, only: [:new]
  get 'signup/login' => 'signup#login'
end
