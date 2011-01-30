class CardSet < ActiveRecord::Base
  has_many :cards
  belongs_to :block
end
