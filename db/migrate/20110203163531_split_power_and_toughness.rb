class SplitPowerAndToughness < ActiveRecord::Migration
  def self.up
    add_column :cards, :power_int, :integer
    add_column :cards, :toughness_int, :integer
    add_column :cards, :power_text, :string
    add_column :cards, :toughness_text, :string
    Card.all.each do |card|
      if (card.power and card.power.size > 0)
        if is_numeric?(card.power)
          card.update_attributes( {:power_int => card.power.to_i,
                                   :power_text => card.power} )
        else
          card.update_attributes( {:power_int => 99,
                                   :power_text => card.power} )
        end
      end
      if (card.toughness and card.toughness.size > 0)
        if is_numeric?(card.toughness)
          card.update_attributes({ :toughness_int => card.toughness.to_i,
                                   :toughness_text => card.toughness} )
        else
          card.update_attributes( {:toughness_int => 99,
                                   :toughness_text => card.toughness} )
        end
      end
    end
  end

  def self.down
    remove_column :cards, :power_int
    remove_column :cards, :power_text
    remove_column :cards, :toughness_int
    remove_column :cards, :toughness_text
  end

  def self.is_numeric?(num)
    Float num rescue false;
  end

end
