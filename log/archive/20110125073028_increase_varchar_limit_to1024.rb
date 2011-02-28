class IncreaseVarcharLimitTo1024 < ActiveRecord::Migration
  def self.up
    change_column :cards, :name, :string, :limit => 1024
    change_column :cards, :edition, :string, :limit => 1024
    change_column :cards, :color, :string, :limit => 1024
    change_column :cards, :cost, :string, :limit => 1024
    change_column :cards, :type, :string, :limit => 1024
    change_column :cards, :text, :string, :limit => 1024
    change_column :cards, :power, :string, :limit => 1024
    change_column :cards, :toughness, :string, :limit => 1024
    change_column :cards, :flavor, :string, :limit => 1024
    change_column :cards, :rarity, :string, :limit => 1024
    change_column :cards, :artist, :string, :limit => 1024
    change_column :cards, :internal, :string, :limit => 1024
  end

  def self.down
    change_column :cards, :name, :string, :limit => 255
    change_column :cards, :edition, :string, :limit => 255
    change_column :cards, :color, :string, :limit => 255
    change_column :cards, :cost, :string, :limit => 255
    change_column :cards, :type, :string, :limit => 255
    change_column :cards, :text, :string, :limit => 255
    change_column :cards, :power, :string, :limit => 255
    change_column :cards, :toughness, :string, :limit => 255
    change_column :cards, :flavor, :string, :limit => 255
    change_column :cards, :rarity, :string, :limit => 255
    change_column :cards, :artist, :string, :limit => 255
    change_column :cards, :internal, :string, :limit => 255
  end
end
