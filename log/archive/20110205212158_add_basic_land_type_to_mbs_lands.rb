class AddBasicLandTypeToMbsLands < ActiveRecord::Migration
  def self.up
    lands = Card.find(:all, :conditions => {
      :name => ["Plains", "Island", "Swamp", "Mountain", "Forest"],
      :edition => "MBS"
    })

    lands.each do |land|
      land.type = "Basic Land - #{land.name}"
      land.save
    end
  end

  def self.down
  end
end
