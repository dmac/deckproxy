class Card < ActiveRecord::Base
  # Allows us to have column name "type" in our database.
  self.inheritance_column = "inheritance_type"

  named_scope :with_number, lambda {
    { :conditions => ["number IS NOT NULL"] }
  }
  named_scope :by_name, lambda { |query|
    { :conditions => ["name LIKE ? OR name LIKE ?", "%#{query}%", "%#{query.capitalize}%"] }
  }
  named_scope :by_text, lambda { |query|
    { :conditions => ["text LIKE ? OR text LIKE ?", "%#{query}%", "%#{query.capitalize}%"] }
  }
end

