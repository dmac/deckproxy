class AddPacksAssociationTable < ActiveRecord::Migration
  def self.up
    create_table :packs, :id => false do |t|
      t.integer :deck_id
      t.integer :card_id
      t.integer :number
    end

    add_index :packs, [:deck_id, :card_id], :unique => true
    add_index :packs, :deck_id, :unique => false
  end

  def self.down
    drop_table :packs
  end
end
