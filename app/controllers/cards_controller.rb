class CardsController < ApplicationController
  before_action :set_mypage, only: [:index, :new, :create]

  def index
    @card = Card.where(params[:card_id])
  end

  def new
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to mypage_cards_path(@mypage), notice: 'カードを登録しました'
    else
      @card = Card.new(card_params)
      flash.now[:alert] = '登録できませんでした'
      render :new
    end
  end

  def destroy
    # ログイン機能実相時に切り替えcard.user_id == current_user.id
    card = Card.find(params[:id])
    @mypage = card.mypage
    if card.destroy
      redirect_to mypage_cards_path(@mypage), notice: 'カードを削除しました'
    else
      # userログイン機能など未実装のため、仮として設置
      flash.now[:alert] = '削除できませんでした'
      render :index
    end
  end

  private
  def card_params
    params.require(:card).permit(:number, :exp_month, :exp_year, :cvc_code).merge(mypage_id: params[:mypage_id])
  end

  def set_mypage
    @mypage = Mypage.find(params[:mypage_id])
  end

end