class CardsController < ApplicationController

  def index
    @mypage = Mypage.find(params[:mypage_id])
    @card = @mypage.card
  end

  def new
    @mypage = Mypage.find(params[:mypage_id])
    @card = Card.new
  end

  def create
    @card = Card.new(card_params)
    if @card.save
      redirect_to mypage_cards_path, notice: 'カードを登録しました'
    else
      @mypage = Mypage.find(1)
      @card = Card.new(card_params)
      # userログイン機能など未実装のため、仮として設置
      flash.now[:alert] = '登録できませんでした'
      render :new
    end
  end

  def destroy
    card = Card.find(params[:id])
    @mypage = card.mypage
    if card.destroy # ログイン機能実相時に切り替えcard.user_id == current_user.id
      redirect_to mypage_cards_path(@mypage), notice: 'カードを削除しました'
    else
      @mypage = Mypage.find(1)
      @card = Card.new
      # userログイン機能など未実装のため、仮として設置
      flash.now[:alert] = '削除できませんでした'
      render :index
    end
  end

  private
  def card_params
    params.require(:card).permit(:number, :exp_month, :exp_year, :cvc_code).merge(mypage_id: params[:mypage_id])
  end

end