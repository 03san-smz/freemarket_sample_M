class MypagesController < ApplicationController
  def index
    @item = "商品リスト"
    @mypage = Mypage.find(1)
    # userログイン機能など未実装のため、仮として設置
  end
end
