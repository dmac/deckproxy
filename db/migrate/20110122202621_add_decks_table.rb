class AddDecksTable < ActiveRecord::Migration
  def self.up    
    create_table :decks do |t|
      t.string :name, :limit => 1024
      t.timestamps
    end
  end

  def self.down
    drop_table :decks
  end
end
