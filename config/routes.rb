Rails.application.routes.draw do
  # devise_for :users(ログイン機能未実装の為コメントアウト)
  root 'items#index'
  resources :items, shallow: true, only: [:show] do
    resources :transactions, only: [:new, :edit] do
      collection do
        post 'pay'
      end
    end
  end
  resources :mypages, shallow: true, only: [:index] do
    resources :cards, only: [:index, :new, :create, :destroy]
    resources :identifications, only: [:edit]
    resources :sales, only: [:new]
  end
end
