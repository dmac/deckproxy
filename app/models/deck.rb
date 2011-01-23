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

  def add_card(card)
    pack = Pack.find(:first,
                     :conditions => ["deck_id = ? and card_id = ?",
                                     self.id,
                                     card.id])
    if (pack)
      num = pack.number + 1
      pack.update_attribute(:number, num);
    elsif
      self.cards << card
    end
  end

  def update_pack(card, quantity)
    pack = Pack.find(:first,
                     :conditions => ["deck_id = ? and card_id = ?",
                                     self.id,
                                     card.id])
    if (pack)
      pack.update_attribute(:number, quantity)
    end
  end

  def rename(newName)
    self.name = newName
    self.save
  end

  def self.get_all_decks
    find(:all, :order => "name")
  end
end
