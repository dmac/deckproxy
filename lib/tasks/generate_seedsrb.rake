#!/usr/bin/env ruby

desc 'generate seeds'
task :generate_seedsrb => :environment do
  f = File.open("./db/seeds" + Date.new.to_s + ".rb", 'w')
  cards = Card.all
  cardsets = CardSet.all
  blocks = Block.all
  begin
    # Cards
    total_num = cards.size
    cards.each_index do |index|
      if index % 1000 == 0
        puts 'Cards ' + index.to_s + '/' + total_num.to_s + ' handled' if index % 1000 == 0
        f.write('puts "Cards ' + index.to_s + '/' + total_num.to_s + ' handled" ') if index % 1000 == 0
        f.write("\n")
      end
      f.write("Card.create(" + cards[index].to_s + ")\n")
    end
		puts "Cards done!"

    # CardSets
    total_num = cardsets.size
    cardsets.each_index do |index|
      if index % 10 == 0
        puts 'CardSets ' + index.to_s + '/' + total_num.to_s + ' handled' if index % 10 == 0
        f.write('puts "CardSets ' + index.to_s + '/' + total_num.to_s + ' handled" ') if index % 10 == 0
        f.write("\n")
      end
      f.write("CardSet.create(" + cardsets[index].to_s + ")\n")
    end
		puts "CardSets done!"

    # Blocks
    total_num = blocks.size
    blocks.each_index do |index|
      puts 'Blocks ' + index.to_s + '/' + total_num.to_s + ' handled'
      f.write('puts "Blocks ' + index.to_s + '/' + total_num.to_s + ' handled" ') 
			f.write("\n")
      f.write("Block.create(" + blocks[index].to_s + ")\n")
    end
		puts "Blocks done!"

  ensure
    f.close()
  end
end
