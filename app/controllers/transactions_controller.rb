class TransactionsController < ApplicationController
  before_action :set_item, only: [:new, :edit]

  def new
    @mypage = @item.mypage(params[:mypage_id])
    @card = @mypage.card(params[:crad_id])
  end

  def edit
    @card = Card.where(params[:id])
  end

  def pay
    Payjp.api_key = PAYJP_SECRET_KEY
    Payjp::Charge.create(
      amount: 2800,
      card: params['payjp-token'],
      currency: 'jpy'
    )
    redirect_to root_path, notice: '購入しました'
  end

  private

  def set_item
    @item = Item.find(params[:item_id])
  end
end
