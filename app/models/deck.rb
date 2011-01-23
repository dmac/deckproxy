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
    pack = Pack.new
    pack.number = num
    pack.deck = self
    pack.card = card
    pack.save
    # this should increment if found
  end

  def rename(newName)
    self.name = newName
    self.save
  end

  def self.get_all_decks
    find(:all, :order => "name")
  end
end
