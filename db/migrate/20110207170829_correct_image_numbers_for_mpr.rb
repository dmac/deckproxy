class CorrectImageNumbersForMpr < ActiveRecord::Migration
		def self.up
      name_to_correct_num = {
        "Wasteland" => 1,
        'Voidmage Prodigy' => 2,
        'Powder Keg' => 3,
        "Terror" => 5,
        'Psychatog'=> 4,
        'Fireball' => 6,
        'Oxidize' => 7,
        'Mana Leak' => 8,
        'Reciprocate' => 9,
        'Hypnotic Specter' => 10,
        'Hinder' => 11,
        'Pyroclasm' => 12,
        'Giant Growth' => 13,
        'Putrefy' => 14,
        'Zombify' => 15,
        'Lightning Helix' => 16,
        'Wrath of God' => 17,
        'Condemn' => 18,
        'Mortify' => 19,
        'Psionic Blast' => 20,
        'Cruel Edict' => 21,
        'Disenchant' => 22,
        'Recollect' => 23,
        'Damnation' => 24,
        'Tidings' => 25,
        'Incinerate' => 26,
        'Mana Tithe' => 27,
        'Harmonize' => 28,
        'Ponder' => 29,
        'Corrupt' => 30,
        'Cryptic Command' => 31,
        'Flame Javelin' => 32,
        'Unmake' => 33,
        'Nameless Inversion' => 34,
        'Remove Soul' => 35,
        'Blightning'  => 36,
        'Rampant Growth' => 37,
        'Negate' => 38,
        'Terminate' => 39,
        'Lightning Bolt' => 40,
        'Cancel' => 41,
        'Sign in Blood' => 42,
        'Infest' => 43,
        'Volcanic Fallout' => 44,
        'Celestial Purge' => 45,
        'Bituminous Blast' => 46,
        'Burst Lightning' => 47,
        'Harrow' => 48
      }

		name_to_correct_num.each do |name, correct_num|
			c = Card.find(:first,
                    :conditions => ['edition = "MPR" and name = ?',
                                    name])
			c.update_attribute("number", correct_num) if c
      puts "Couldn't find card with name " + name unless c
		end

  end

  def self.down
  end
end
