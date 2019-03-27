Rails.application.routes.draw do
  root 'items#index'
  get 'signup/new' => 'signup#new'
  get 'signup/login' => 'signup#login'
end
