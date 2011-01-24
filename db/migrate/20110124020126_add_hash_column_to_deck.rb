class AddHashColumnToDeck < ActiveRecord::Migration
  def self.up
    add_column :decks, :deck_hash, :string
    add_index :decks, :deck_hash, :unique => true
  end

  def self.down
    remove_column :decks, :deck_hash
  end
end
