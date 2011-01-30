require 'active_record/fixtures'

class CreateCardSets < ActiveRecord::Migration
  def self.up
    create_table :card_sets do |t|
      t.string :name, :limit => 1024
      t.string :myr_id, :limit => 1024
      t.string :lackey_id, :limit => 1024
      t.string :supported_codes, :limit => 1024
      t.string :block, :limit => 1024
      t.integer :block_id
    end
    Fixtures.create_fixtures('test/fixtures', File.basename("card_sets.yml", '.*'))

    add_index(:card_sets, :myr_id, :unique => true)
    add_index(:card_sets, :name, :unique => true)
    add_index(:card_sets, :block, :unique => false)
  end


  def self.down
    drop_table :card_sets
  end
end
