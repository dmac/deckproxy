class ChangeOnlaughtMyrId < ActiveRecord::Migration
  def self.up
    ons = CardSet.find_by_name('Onslaught')
    ons.myr_id = 'ON'
    ons.save
  end

  def self.down
  end
end
