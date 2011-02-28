class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :name, :limit => 1024
      t.string :edition, :limit => 1024
      t.string :color, :limit => 1024
      t.string :cost, :limit => 1024
      t.string :type, :limit => 1024
      t.string :text, :limit => 1024
      t.string :power, :limit => 1024
      t.string :toughness, :limit => 1024
      t.string :flavor, :limit => 1024
      t.string :rarity, :limit => 1024
      t.string :artist, :limit => 1024

      t.integer :number
      t.integer :mana
      t.integer :power_int
      t.integer :toughness_int

      t.string :power_text, :limit => 1024
      t.string :toughness_text, :limit => 1024

      # 6C b/c if something doesnt have a color we want it to be colorless
      t.string :sort_color, :limit => 1024, :default => '6C'
      # 0000-00 b/c if something doesnt have a set we want it to appear last
      t.string :sort_set, :limit => 1024, :default => '0000-00'

    end
  end

  def self.down
    drop_table :cards
  end
end
