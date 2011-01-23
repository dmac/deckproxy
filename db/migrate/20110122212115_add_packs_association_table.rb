class AddPacksAssociationTable < ActiveRecord::Migration
  def self.up
    create_table :packs do |t|
      t.integer :deck_id, :null => false
      t.integer :card_id, :null => false
      t.integer :number
    end

    add_index :packs, [:deck_id, :card_id], :unique => true
    add_index :packs, :deck_id, :unique => false
  end

  def self.down
    drop_table :packs
  end
end
