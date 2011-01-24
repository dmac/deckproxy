class DeckController < ApplicationController
  def index
    @decks = Deck.get_all_decks
  end

  def view
    @deck = Deck.find_by_deck_hash(params[:id])
  end
end
