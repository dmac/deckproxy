require "digest/sha1"

class Deck < ActiveRecord::Base
  has_many :packs
  has_many :cards, :through => :packs

  def after_create
    if !self.name
      name = "Unnamed Deck (" + self.id.to_s + ")"
      self.name =name
    end

    self.deck_hash = Deck.generate_random_hash
    self.save
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
      if (quantity <= 0)
        pack.destroy
        return true
      else 
        pack.update_attribute(:number, quantity)
      end
    end
    return false
  end

  def rename(newName)
    self.name = newName
    self.save
  end

  def self.get_all_decks
    find(:all, :order => "name")
  end

  def self.generate_random_hash
    begin
      hash = Digest::SHA1.hexdigest Time.now.to_s
      hash = hash[0..6]
    end until Deck.find_by_deck_hash(hash).nil?
    hash
  end
end
