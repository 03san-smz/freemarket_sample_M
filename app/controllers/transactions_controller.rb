class TransactionsController < ApplicationController
  def new
    @user = User.find(1)
    @card = Card.where(user_id: 1)
    # userログイン機能など未実装のため、仮として設置
  end

  def edit
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
