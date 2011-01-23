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
    BLACK = 'B'
    BLACK_BLUE = '%%V'
    BLACK_GREEN = '%%Q'
    BLACK_RED = '%%K'
    BLACK_WHITE = '%%O'
    BLUE = 'U'
    BLUE_GREEN = '%%S'
    BLUE_RED = '%%I'
    BLUE_WHITE = '%%D'
    GREEN ='G'
    GREEN_RED = '%%L'
    GREEN_WHITE = '%%A'
    RED = 'R'
    RED_WHITE = '%%P'
    WHITE = 'W'
    UNC_BLACK = '%%H'
    UNC_BLUE = '%%F'
    UNC_GREEN = '%%M'
    UNC_RED = '%%J'
    UNC_WHITE = '%%E'

    BLACKS = [BLACK, BLACK_BLUE, BLACK_GREEN, BLACK_RED, BLACK_WHITE, UNC_BLACK]
    BLUES = [BLUE, BLACK_BLUE, BLUE_GREEN, BLUE_RED, BLUE_WHITE, UNC_BLUE]
    GREENS = [GREEN, BLACK_GREEN, BLUE_GREEN, GREEN_RED, GREEN_WHITE, UNC_GREEN]
    REDS = [RED, BLACK_RED, BLUE_RED, GREEN_RED, RED_WHITE, UNC_RED]
    WHITES = [WHITE, BLACK_WHITE, BLUE_WHITE, GREEN_WHITE, RED_WHITE, UNC_WHITE]
    ALL = BLACKS | BLUES | GREENS | REDS | WHITES

    str = ""
    if (query.include?("R") or query.include?("RED"))
      str = add_colors_to_conditions(str, REDS)
    end
    if (query.include?("G") or query.include?("GREEN"))
      str = add_colors_to_conditions(str, GREENS)
    end
    if (query.include?("U") or query.include?("BLUE"))
      str = add_colors_to_conditions(str, BLUES)
    end
    if (query.include?("B") or query.include?("BLACK"))
      str = add_colors_to_conditions(str, BLACKS)
    end
    if (query.include?("W") or query.include?("WHITE"))
      str = add_colors_to_conditions(str, WHITES)
    end
    str += " escape '!'" if str.size > 0
    if (query.include?("C") or query.include?("COLORLESS"))
      cond = ""
      cond = add_colors_to_conditions(cond, ALL);
      str += " or " if (str.size > 0)
      str += " id not in (select id from cards where " + cond + " ) "
    end

    { :conditions => [str] }
  }

  def self.add_colors_to_conditions(str, colorChars)
    colorChars.each do |c|
      str += " or " if (str.size > 0)
      if (c.include?('%'))
        str += " cost like '%%!" + c + "%%' escape '!' ";
      else
        str += " cost like '%%" + c + "%%' ";
      end
    end
    return str
  end

  def add_to_deck(deck)
    pack = Pack.new
    pack.deck = deck
    pack.card = self
    pack.save
  end
end

