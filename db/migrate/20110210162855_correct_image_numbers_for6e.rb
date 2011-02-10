class CorrectImageNumbersFor6e < ActiveRecord::Migration
  def self.up
    name_to_correct_num = {
      'Mystic Compass' => 301,
      'Obsianus Golem' => 302,
      'Ornithopter' => 303,
      'Patagia Golem' => 304,
      'Pentagram of the Ages' => 305,
      'Phyrexian Vault' => 306,
      'Primal Clay' => 307,
      'Rod of Ruin' => 308,
      'Skull Catapult' => 309,
      'Sky Diamond' => 310,
      'Snake Basket' => 311,
      'Soul Net' => 312,
      'Storm Cauldron' => 313,
      "Teferi's Puzzle Box" => 314,
      'The Hive' => 315,
      'Howling Mine' => 289,
      'Iron Star' => 290,
      'Ivory Cup' => 291,
      'Jade Monolith' => 292,
      'Jalum Tome' => 293,
      'Jayemdae Tome' => 294,
      'Lead Golem' => 295,
      'Lead Golem' => 295,
      'Mana Prism' => 296,
      'Marble Diamond' => 297,
      'Meekstone' => 298,
      'Millstone' => 299,
      'Moss Diamond' => 300
    }

    name_to_correct_num.each do |name, correct_num|
      c = Card.find(:first,
                    :conditions => ['edition = "6E" and name = ?',
                                    name])
      if c
          c.update_attribute("number", correct_num)
      else
        puts "Couldn't find card with name " + name unless c
      end
    end
  end

  def self.down
  end
end
