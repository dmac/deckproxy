class Card < ActiveRecord::Base
  belongs_to :set
  has_many :packs
  has_many :decks, :through => :packs

  # Allows us to have column name "type" in our database.
  self.inheritance_column = "inheritance_type"

  named_scope :no_match, lambda {
    { :conditions => ["0"]}
  }
  named_scope :with_number, lambda {
    { :conditions => ["cards.number IS NOT NULL"] }
  }
  named_scope :by_name, lambda { |query|
    { :conditions => ["cards.name ILIKE ? OR cards.name ILIKE ?", "%#{query}%",
        "%#{query.split(/\s+/).map { |word| word.capitalize }.join(" ")}%"] }
  }
  named_scope :by_text, lambda { |query|
    { :conditions => ["cards.text ILIKE ? OR cards.text ILIKE ?", "%#{query}%", "%#{query.capitalize}%"] }
  }
  named_scope :by_type, lambda { |query|
    { :conditions => ["cards.type ILIKE ? OR cards.type ILIKE ?", "%#{query}%", "%#{query.capitalize}%"]}
  }
  named_scope :equal_to_mana, lambda { |query|
    { :conditions => ["cards.mana = ?", query] }
  }
  named_scope :less_than_mana, lambda { |query|
    { :conditions => ["cards.mana < ?", query] }
  }
  named_scope :less_than_or_equal_mana, lambda { |query|
    { :conditions => ["cards.mana <= ?", query] }
  }
  named_scope :greater_than_mana, lambda { |query|
    { :conditions => ["cards.mana > ?", query] }
  }
  named_scope :greater_than_or_equal_mana, lambda { |query|
    { :conditions => ["cards.mana >= ?", query] }
  }
  named_scope :equal_to_power, lambda { |query|
    { :conditions => ["cards.type LIKE '%Creature%' and cards.power_text = ?", query] }
  }
  named_scope :less_than_power, lambda { |query|
    { :conditions => ["cards.type LIKE '%Creature%' and cards.power_int < ?", query] }
  }
  named_scope :less_than_or_equal_power, lambda { |query|
    { :conditions => ["cards.type LIKE '%Creature%' and cards.power_int <= ?", query] }
  }
  named_scope :greater_than_power, lambda { |query|
    { :conditions => ["cards.type LIKE '%Creature%' and cards.power_int > ?", query] }
  }
  named_scope :greater_than_or_equal_power, lambda { |query|
    { :conditions => ["cards.type LIKE '%Creature%' and cards.power_int >= ?", query] }
  }
  named_scope :equal_to_toughness, lambda { |query|
    { :conditions => ["cards.type LIKE '%Creature%' and cards.toughness_text = ?", query] }
  }
  named_scope :less_than_toughness, lambda { |query|
    { :conditions => ["cards.type LIKE '%Creature%' and cards.toughness_int < ?", query] }
  }
  named_scope :less_than_or_equal_toughness, lambda { |query|
    { :conditions => ["cards.type LIKE '%Creature%' and cards.toughness_int <= ?", query] }
  }
  named_scope :greater_than_toughness, lambda { |query|
    { :conditions => ["cards.type LIKE '%Creature%' and cards.toughness_int > ?", query] }
  }
  named_scope :greater_than_or_equal_toughness, lambda { |query|
    { :conditions => ["cards.type LIKE '%Creature%' and cards.toughness_int >= ?", query] }
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
    if (query.include?("C") or query.include?("COLORLESS"))
      cond = ""
      cond = add_colors_to_conditions(cond, ALL);
      str += " or " if (str.size > 0)
      str += " cards.id not in (select id from cards where " + cond + " ) "
    end

    { :conditions => [str] }
  }
  named_scope :by_set, lambda { |query|
    {
      :select => "cards.*",
      :joins => "INNER JOIN card_sets ON card_sets.myr_id = cards.edition",
      :conditions=>["card_sets.name ILIKE ?
                     or card_sets.supported_codes ILIKE ?
                     or card_sets.myr_id ILIKE ?", "%#{query}%", "%#{query}%", "#{query}"]
    }
  }
  named_scope :by_format, lambda { |query|
    condition_str = ""
    ids = Block.send("get_" + query + "_format_card_set_ids")

    #query is the format ['standard', 'extended' or 'block]
    ids.each do |id|
      condition_str += " OR " if condition_str.size > 0
      condition_str += " card_sets.id = " + id + " "
    end

    {
      :select => "cards.*",
      :joins => "INNER JOIN card_sets ON card_sets.myr_id = cards.edition",
      :conditions=>[condition_str]
    }
  }

  def self.add_colors_to_conditions(str, colorChars)
    colorChars.each do |c|
      str += " or " if (str.size > 0)
      if (c.include?('%'))
        str += " cards.cost ILIKE '%%!" + c + "%%' escape '!' ";
      else
        str += " cards.cost ILIKE '%%" + c + "%%' ";
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

  def self.no_results_card
    Card.find(:first, :conditions => ['edition = ? AND name like ?', 'UNH', 'AWOL'])
  end

  def to_s
    str = '{ :id => ' + id.to_s + ', '
    str = str + ':name => "' + name.gsub(/"/, "'") + '", '
    str = str + ':edition => "' + edition + '", '
    str = str + ':color => "' + color + '", '
    str = str + ':cost => "' + cost + '", '
    str = str + ':type => "' + type + '", '
    str = str + ':text => "' + text.gsub(/"/, "'") + '", ' if text and text.size > 0
    str = str + ':power => "' + power + '", ' if power
    str = str + ':toughness => "' + toughness + '", ' if toughness
    str = str + ':flavor => "' + flavor.gsub(/"/, "'") + '", ' if flavor and flavor.size > 0
    str = str + ':rarity => "' + rarity + '", '
    str = str + ':artist => "' + artist + '", '
    str = str + ':number => ' + number.to_s + ', ' if number
    str = str + ':mana => ' + mana.to_s + ', ' if mana
    str = str + ':type_index => ' + type_index.to_s + ', ' if type_index
    str = str + ':power_int => ' + power_int.to_s + ', ' if power_int
    str = str + ':toughness_int => ' + toughness_int.to_s + ', ' if toughness_int
    str = str + ':power_text => "' + power_text + '", ' if power_text and power_text.size > 0
    str = str + ':toughness_text => "' + toughness_text + '" ' if toughness_text and toughness_text.size > 0
    str = str + '}'
		str
  end


end

