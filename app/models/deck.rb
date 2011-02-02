require "digest/sha1"

class Deck < ActiveRecord::Base
  has_many :packs
  has_many :cards, :through => :packs
  belongs_to :user

  def after_create
    if !self.name
      name = "Unnamed Deck (" + self.id.to_s + ")"
      self.name =name
    end

    self.deck_hash = Deck.generate_random_hash
    self.save
  end

  # Returns an array of integers, where index is the converted mana cost
  # and value is the number of cards in the deck with that CMC.
  def mana_curve
    curve = []
    num_cards = packs.map { |pack| pack.number }.sum
    cost = 0
    while curve.sum != num_cards
      packs = packs_with_cmc(cost)
      curve[cost] = packs.map { |pack| pack.number }.sum
      cost += 1
    end
    curve
  end

  # Returns an array of [ [color, count], ... }
  def color_spread
    spread = [["W", 0], ["U", 0], ["B", 0], ["R", 0], ["G", 0], ["A", 0]]
    packs.each do |pack|
      spread[0][1] += pack.number if pack.card.cost.match(/W/)
      spread[1][1] += pack.number if pack.card.cost.match(/U/)
      spread[2][1] += pack.number if pack.card.cost.match(/B/)
      spread[3][1] += pack.number if pack.card.cost.match(/R/)
      spread[4][1] += pack.number if pack.card.cost.match(/G/)
      spread[5][1] += pack.number if pack.card.type.match(/artifact/i)
    end
    spread
  end

  def packs_with_cmc(cost)
    packs.select { |pack| pack.card.mana.to_i == cost }
  end

  def creatures
    packs.select { |pack| pack.card["type"].match(/creature/i) }
  end

  def planeswalkers
    packs.select { |pack| pack.card["type"].match(/planeswalker/i) }
  end

  def enchantments
    packs.select { |pack| pack.card["type"].match(/enchantment/i) }
  end

  def sorceries
    packs.select { |pack| pack.card["type"].match(/sorcery/i) }
  end

  def artifacts
    packs.select { |pack| pack.card["type"].match(/artifact/i) &&
                          pack.card["type"].match(/creature/i) == nil }
  end

  def instants
    packs.select { |pack| pack.card["type"].match(/instant/i) }
  end

  def lands
    packs.select { |pack| pack.card["type"].match(/land/i) }
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

  # Returns all decks with no user (user_id = 0)
  def self.public_decks
    find(:all, :conditions => { :user_id => 0 }, :order => "name")
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
