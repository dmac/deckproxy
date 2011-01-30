require 'active_record/fixtures'

class CreateBlocks < ActiveRecord::Migration
  def self.up
    create_table :blocks do |t|
      t.string :name, :limit =>1024
      t.integer :number
    end

    Fixtures.create_fixtures('test/fixtures', File.basename("blocks.yml", '.*'))

  end

  def self.down
    drop_table :blocks
  end
end
