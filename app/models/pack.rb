class Pack < ActiveRecord::Base
  validates_numericality_of :number
  belongs_to :card
  belongs_to :deck

end
