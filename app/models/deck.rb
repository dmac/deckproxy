class Deck < ActiveRecord::Base
  has_many :packs
  has_many :cards, :through => :packs

  def after_create
    if !self.name
      name = "Unnamed Deck (" + self.id.to_s + ")"
      self.name =name
      self.save
    end
  end

  def add_card(card, num = 1)
    pack = Pack.find(:all,
                     :conditions => "deck_id = " + self.id.to_s +
                                    "AND card_id = " + card.id).first;
    pack = Pack.new unless pack
    pack.number = pack.number++
    pack.deck = self
    pack.card = card
    pack.save
  end

  def rename(newName)
    self.name = newName
    self.save
  end

  def self.get_all_decks
    find(:all, :order => "name")
  end
end
