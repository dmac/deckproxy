class DeckController < ApplicationController
  def index
    @user = current_user
    if @user
      @decks = @user.decks
    end
    @public_decks = Deck.public_decks
  end

  def view
    @user = current_user
    @deck = Deck.find_by_deck_hash(params[:id])
    if @deck.user && @deck.user != @user
      render :text => "", :status => 403
    else
      render "deck/view"
    end
  end

  def proxy
    @user = current_user
    @deck = Deck.find_by_deck_hash(params[:id])
    if @deck.user && @deck.user != @user
      render :text => "", :status => 403
    else
      render "deck/proxy"
    end
  end

  def delete_deck
    if (params[:deck_id])
      deck = Deck.find(params[:deck_id])
      deck.destroy
    end
    redirect_to :action => "index"
  end

end
