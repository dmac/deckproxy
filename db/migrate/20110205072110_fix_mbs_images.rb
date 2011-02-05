class FixMbsImages < ActiveRecord::Migration
  def self.up
		id_to_correct_num = {
	 		18741 => 72,
			18780 => 114,
			18781 => 113,
			18794 => 128,
			18739 => 73,
			18795 => 127,
			18740 => 74
		}

		id_to_correct_num.each do |id, correct_num|
			c = Card.find(id)
			c.update_attribute("number", correct_num)
		end

  end

  def self.down
  end
end
