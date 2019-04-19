Rails.application.routes.draw do
  root 'items#index'
  resources :items, only: [:show]

  resources :users, only: [:index] do
    resources :cards, only: [:index, :new, :create, :destroy]
  end
  resources :signup, only: [:new, :login] do
    collection do
      get 'login'
    end
  end

  resources :logout, only: [:show, :destroy]
  resources :identification, only: [:edit]
  resources :profile, only: [:edit]
  resources :sales, only: [:new]
  resources :transactions, only: [:new, :edit] do
    collection do
      post 'pay'
    end
  end
end
