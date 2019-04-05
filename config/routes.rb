Rails.application.routes.draw do
  root 'items#index'
  resources :signup, only: [:new]
  resources :transactions, only: [:new, :edit]
  resources :signup, only: [:new, :login] do
    collection do
      get 'login'
    end
  end
  resources :mypage, only: [:edit_profile, :edit_identification] do
    member do
      get 'edit_profile'
      get 'edit_identification'
    end
  end
  resources :sales, only: [:new]
  get 'mypage', to: 'mypages#index'
end
