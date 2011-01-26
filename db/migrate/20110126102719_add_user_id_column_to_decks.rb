class AddUserIdColumnToDecks < ActiveRecord::Migration
  def self.up
    add_column :decks, :user_id, :integer, :default => 0
  end

  def self.down
    remove_column :decks, :user_id, :integer
  end
end
