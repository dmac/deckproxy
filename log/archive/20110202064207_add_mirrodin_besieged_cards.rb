class AddMirrodinBesiegedCards < ActiveRecord::Migration
  def self.up
    raw = File.read("data/sets/mirrodin_besieged.txt")
    lines = raw.split("\n\n")
    lines.each do |line|
      data = line.split("|")
      Card.create(
          :name => data[0],
          :edition => data[1],
          :color => data[2],
          :cost => data[3],
          :type => data[4],
          :text => data[5],
          :power => data[6],
          :toughness => data[7],
          :flavor => data[8],
          :rarity => data[9],
          :artist => data[10],
          :number => data[11],
          :mana => data[12]
      )
    end
  end

  def self.down
    Card.destroy_all("edition = 'MBS'")
  end
end

