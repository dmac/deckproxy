class Card < ActiveRecord::Base
  self.inheritance_column = "inheritance_type"
end
