class AddMbsToScarsBlock < ActiveRecord::Migration
  def self.up
    scars_block = Block.find_by_name("Scars of Mirrodin")
    mbs = CardSet.create(
      :name => "Mirrodin Besieged",
      :myr_id => "MBS",
      :block_id => scars_block.id
    )

  end

  def self.down
    mbs = CardSet.find_by_name('Mirrodin Besieged')
    mbs.destroy
  end
end
