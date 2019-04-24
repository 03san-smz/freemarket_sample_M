class SalesController < ApplicationController
  def new
    @sale = Sale.new
    @mypage = Mypage.find(params[:mypage_id])
  end
end
