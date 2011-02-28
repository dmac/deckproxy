class Block < ActiveRecord::Base
  has_many :card_sets

  def self.get_block_format_card_set_ids
    # only most current block

    formatCardSetIDs = []
    get_card_sets_from_x_blocks_back(1).each do |card_set|
      formatCardSetIDs << card_set.id.to_s
    end
    formatCardSetIDs
  end

  def self.get_standard_format_card_set_ids
    # two most recent blocks and most recent core

    # add expansion card_set.ids
    formatCardSetIDs = []
    get_card_sets_from_x_blocks_back(2).each do |card_set|
      formatCardSetIDs << card_set.id.to_s
    end

    #add two core card_set.ids
    get_core_x_blocks_back(1).each do |core|
      formatCardSetIDs << core.id.to_s
    end
    formatCardSetIDs
  end

  def self.get_extended_format_card_set_ids
    # four most recent blocks and two most recent corse
    formatCardSetIDs = []
    get_card_sets_from_x_blocks_back(4).each do |card_set|
      formatCardSetIDs << card_set.id.to_s
    end

    #add two core card_set.ids
    get_core_x_blocks_back(2).each do |core|
      formatCardSetIDs << core.id.to_s
    end
    formatCardSetIDs
  end

  def self.get_card_sets_from_x_blocks_back(x)
    card_sets = []

    blocks = Block.find(:all, :order => "number DESC")
    x.times do |i|
      card_sets = card_sets | blocks[i].card_sets
    end
    card_sets
  end

  def self.get_core_x_blocks_back(x)
    card_sets = []

    cores = CardSet.find(:all,
                         :conditions => ["core_num is not null"],
                         :order => "core_num DESC")
    x.times do |i|
      card_sets << cores[i]
    end
    card_sets
  end

  def to_s
    str = '{ :id => ' + id.to_s + ', '
    str = str + ':name => "' + name.gsub(/"/, "'") + '", '
    str = str + ':number => ' + number.to_s + ' '
    str = str + '}'
		str
  end
end
