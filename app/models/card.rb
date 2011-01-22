class Card < ActiveRecord::Base
  # Allows us to have column name "type" in our database.
  self.inheritance_column = "inheritance_type"
end
