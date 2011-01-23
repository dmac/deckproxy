class Card < ActiveRecord::Base
  has_many :packs
  has_many :decks, :through => :packs

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
  named_scope :equal_to_mana, lambda { |query|
    { :conditions => ["mana = ?", "#{query}"] }
  }
  named_scope :less_than_mana, lambda { |query|
    { :conditions => ["mana < ?", "#{query}"] }
  }
  named_scope :less_than_or_equal_mana, lambda { |query|
    { :conditions => ["mana <= ?", "#{query}"] }
  }
  named_scope :greater_than_mana, lambda { |query|
    { :conditions => ["mana > ?", "#{query}"] }
  }
  named_scope :greater_than_or_equal_mana, lambda { |query|
    { :conditions => ["mana >= ?", "#{query}"] }
  }
  named_scope :by_color, lambda { |query|
    query = query.upcase
    str = ""
    if (query.include?("R"))
      str += " cost like '%%R%%' or cost like '%%!%%J%%' or cost like '%%!%%K%%' or cost like '%%!%%L%%' or cost like '%%!%%P%%' or cost like '%%!%%I%%' "
    end
    if (query.include?("G"))
      str += " or " if str.size > 0
      str += " cost like '%%G%%' or cost like '%%!%%M%%' or cost like '%%!%%S%%' or cost like '%%!%%L%%' or cost like '%%!%%A%%' or cost like '%%!%%Q%%' "
    end
    if (query.include?("U"))
      str += " or " if str.size > 0
      str += " cost like '%%U%%' or cost like '%%!%%F%%' or cost like '%%!%%S%%' or cost like '%%!%%I%%' or cost like '%%!%%V%%' or cost like '%%!%%D%%' "
    end
    if (query.include?("B"))
      str += " or " if str.size > 0
      str += " cost like '%%B%%' or cost like '%%!%%H%%' or cost like '%%!%%O%%' or cost like '%%!%%K%%' or cost like '%%!%%Q%%' or cost like '%%!%%V%%' "
    end
    if (query.include?("W"))
      str += " or " if str.size > 0
      str += " cost like '%%W%%' or cost like '%%!%%E%%' or cost like '%%!%%O%%' or cost like '%%!%%P%%' or cost like '%%!%%A%%' or cost like '%%!%%D%%' "
    end
    str += " escape '!'"
    { :conditions => [str] }
  }

  def add_to_deck(deck)
    pack = Pack.new
    pack.deck = deck
    pack.card = self
    pack.save
  end
end

