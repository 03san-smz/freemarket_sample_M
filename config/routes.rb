Rails.application.routes.draw do
  root 'items#index'
  resources :signup, only: [:new]
  resources :transactions, only: [:new, :edit]
  resources :sales, only: [:new]
  get 'signup/login' => 'signup#login'
  get 'mypage/identification' => 'mypage#edit_identification'
  get 'mypage', to: 'mypages#index'
end
