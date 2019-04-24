class TransactionsController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @mypage = Mypage.find(1)
    @card = @mypage.card
    # 要編集
  end

  def edit
    @mypage = Mypage.find(1)
    @card = @mypage.card
    # 要編集
  end

  def pay
    Payjp.api_key = PAYJP_SECRET_KEY
    Payjp::Charge.create(
      amount: 2800,
      card: params['payjp-token'],
      currency: 'jpy'
    )
    redirect_to root_path
  end

end
