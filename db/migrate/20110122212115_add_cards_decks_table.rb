class AddCardsDecksTable < ActiveRecord::Migration
  def self.up
    create_table :cards_decks, :id => false do |t|
      t.integer :deck_id
      t.integer :card_id
      t.integer :number
    end

    add_index :cards_decks, [:deck_id, :card_id], :unique => true
    add_index :cards_decks, :deck_id, :unique => false
  end

  def self.down
    drop_table :cards_decks
  end
end
