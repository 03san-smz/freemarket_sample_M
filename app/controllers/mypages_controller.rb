class MypagesController < ApplicationController

  def index
    @item = "商品リスト"
    @mypage = Mypage.find(1)
    # item定義後に追記
  end

end