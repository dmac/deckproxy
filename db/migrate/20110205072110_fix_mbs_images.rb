class FixMbsImages < ActiveRecord::Migration
  def self.up
		name_to_correct_num = {
	 		"Red Sun's Zenith" => 74,
			'Magnetic Mine' => 114,
			'Mirrorworks' => 113,
			'Razorfield Rhino' => 128,
			'Ogre Resister' => 72,
			'Rusted Slasher' => 127,
			'Rally the Forces' => 73
		}

		name_to_correct_num.each do |name, correct_num|
			c = Card.find_by_name(name)
			c.update_attribute("number", correct_num)
		end

  end

  def self.down
  end
end
