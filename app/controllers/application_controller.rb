class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :authenticate_user! # 未ログイン時はログインページに遷移(機能実装時コメントアウトを外す)
end
