class CardsController < ApplicationController

  def index
    @user = User.find(1)
    @card = Card.where(user_id: 1)
    # Card.where('id == mypage_id: current.user')
  end

  def new
    @user = User.find(1)
    @card = Card.new
  end

  def create
    Card.create(card_params)
    redirect_to user_cards_path
  end

  def destroy
    card = Card.find(params[:id])
    card.destroy
    redirect_to user_cards_path
  end

  private
  def card_params
    params.require(:card).permit(:number, :valid_month, :vaild_year, :security_code).merge(user_id: params[:user_id])
  end
end