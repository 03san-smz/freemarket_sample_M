class UsersController < ApplicationController

  def index
    @item = "商品リスト"
    @user = User.find(1)
    # userログイン機能など未実装のため、仮として設置
  end

end
