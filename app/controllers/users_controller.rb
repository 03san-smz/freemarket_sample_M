class UsersController < ApplicationController

  def index
    @item = "商品リスト"
    @user = User.find(1)
  end

end
