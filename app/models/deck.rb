class Deck < ActiveRecord::Base
  validates_presence_of :name
  has_many :packs
  has_many :cards, :through => :packs

  def add_card(card, num = 1)
    pack = Pack.new
    pack.number = num
    pack.deck = self
    pack.card = card
    pack.save
  end
end
