class DeckController < ApplicationController
  def index
    @decks = Deck.get_all_decks
  end

  def view
    @deck = Deck.find(params[:id])
  end

  def proxy
    @deck = Deck.find(params[:id])
  end

end
