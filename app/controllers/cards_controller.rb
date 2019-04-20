class CardsController < ApplicationController

  def index
    @user = User.find(1)
    @card = Card.where(user_id: 1)
    # userログイン機能など未実装のため、仮として設置
  end

  def new
    @user = User.find(1)
    @card = Card.new
    # userログイン機能など未実装のため、仮として設置
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to user_cards_path, notice: 'カードを登録しました'
    else
      @user = User.find(1)
      @card = Card.new(card_params)
      # userログイン機能など未実装のため、仮として設置
      flash.now[:alert] = '登録できませんでした'
      render :new
    end
  end

  def destroy
    card = Card.find(params[:id])
    if card.destroy # ログイン機能実相時に切り替えcard.user_id == current_user.id
      redirect_to user_cards_path, notice: 'カードを削除しました'
    else
      @user = User.find(1)
      @card = Card.new
      # userログイン機能など未実装のため、仮として設置
      flash.now[:alert] = '削除できませんでした'
      render :index
    end
  end

  private
  def card_params
    params.require(:card).permit(:number, :valid_month, :vaild_year, :security_code).merge(user_id: params[:user_id])
  end
end