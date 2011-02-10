class CorrectImageNumbersFor8eAnd9e < ActiveRecord::Migration
  def self.up
    name_to_correct_num_8e = {
      'Angel of Mercy' => 1,
      'Eager Cadet' => 351,
      'Ardent Militia' => 3,
      'Giant Octopus' => 353,
      'Enormous Baloth' => 352,
      'Aven Flock' => 6,
      'Sea Eagle' => 354,
      'Avatar of Hope' => 4,
      'Silverback Ape' => 355,
      'Blessed Reversal' => 7,
      'Vengeance' => 356,
      'Angelic Page' => 2,
      'Vizzerdrix' => 357,
      'Aven Cloudchaser' => 5
    }
    name_to_correct_num_9e = {
      'Angelic Blessing' => 2,
      'Vengeance' => 358,
      'Aven Flock' => 4,
      'Giant Octopus' => 354,
      'Ballista Squad' => 5,
      'Index' => 356,
      'Blinding Angel' => 7,
      'Vizzerdrix' => 359,
      'Blinking Spirit' => 8,
      'Goblin Raider' => 355,
      'Circle of Protection: Black' => 10,
      'Spined Wurm' => 357,
      'Coral Eel' => 351,
      'Aven Cloudchaser' => 3,
      'Eager Cadet' => 352,
      'Angel of Mercy' => 1,
      'Enormous Baloth' => 353,
      'Chastise' => 9
    }

    name_to_correct_num_8e.each do |name, correct_num|
      c = Card.find(:first,
                    :conditions => ['edition = "8E" and name = ?',
                                    name])
      if c
          c.update_attribute("number", correct_num)
      else
        puts "Couldn't find card with name " + name unless c
      end
    end
    name_to_correct_num_9e.each do |name, correct_num|
      c = Card.find(:first,
                    :conditions => ['edition = "9E" and name = ?',
                                    name])
      c.update_attribute("number", correct_num) if c
      puts "Couldn't find card with name " + name unless c
    end
  end

  def self.down
  end
end
