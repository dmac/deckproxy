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
    @deck = Deck.find_by_deck_hash(params[:id])
  end

end
