Rails.application.routes.draw do
  root 'items#index'
  resources :signup, only: [:new]
  resources :transactions, only: [:new, :edit]
  get 'signup/login' => 'signup#login'
  get 'mypage/identification' => 'mypage#edit_identification'
  get 'mypage/profile' => 'mypage#edit_profile'
end
