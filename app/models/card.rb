class Card < ActiveRecord::Base
  has_many :packs
  has_many :decks, :through => :packs

  # Allows us to have column name "type" in our database.
  self.inheritance_column = "inheritance_type"

  def add_to_deck(deck, num = 1)
    pack = Pack.new
    pack.number = num
    pack.deck = deck
    pack.card = self
    pack.save
  end

end
