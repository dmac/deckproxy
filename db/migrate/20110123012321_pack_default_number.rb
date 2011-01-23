class PackDefaultNumber < ActiveRecord::Migration
  def self.up
    change_column :packs, :number, :integer, :default => 1
  end

  def self.down
    change_column :packs, :number, :integer, :default => nil
  end
end
