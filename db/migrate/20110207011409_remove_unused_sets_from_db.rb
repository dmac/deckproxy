class RemoveUnusedSetsFromDb < ActiveRecord::Migration
  def self.up
    set_myr_ids_to_remove = [
      'CST',
      'STO',
      'DLM',
      'WLD',
      'CVP',
      'DPA',
      'DM',
      'THG',
      'REL',
      'BD',
      'CHP',
      'OV',
      'AT',
      'JGC',
      'ARE',
      'SUM',
      'GPX',
      'S00',
      'PRE',
      'PR',
      'JUN',
      'CIN',
      'PTR',
      'I2P',
      'PT',
      'ST',
      'DD2',
      'CH',
      'P2',
      'FBP',
      'P3',
      'GTW',
      'BRB',
      'HHL',
      'GAM',
      'DRB',
      'FNM',
      'LND',
      'MIN',
      'MGD',
      'EVG',
      'BIN',
      'GAR',
      'DDC',
      'DDD'
    ]

    set_myr_ids_to_remove.each do |myr_id|
      puts 'Removing ' + myr_id
      found_cards = Card.destroy_all(:edition => myr_id)
    end
  end

  def self.down
  end
end
