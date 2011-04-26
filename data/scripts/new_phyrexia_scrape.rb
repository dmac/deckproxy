#!/usr/bin/env ruby

require "rubygems"
require "nokogiri"
#require "open-uri"

URL = "http://mtgsalvation.com/new-phyrexia-spoiler.html"
DELIMITER = "|"

COLORS = {
  "R" => ["R", "{pr}"],
  "G" => ["G", "{pg}"],
  "U" => ["U", "{pu}"],
  "B" => ["B", "{pb}"],
  "W" => ["W", "{pw}"]
}
COLOR_LETTERS = ["R", "G", "U", "B", "W"]

if File.basename(Dir.pwd) != "data"
  puts "This script should be run from deckproxy/data"
  exit 1
end

localFile = File.open("new-phyrexia-spoiler.html")
doc = Nokogiri::HTML(localFile)
localFile.close()

# doc = Nokogiri::HTML(open(URL))

card_tables = doc.css("td[valign=top]")[4..-1]

lines = []
lines.push("class CreateNph < ActiveRecord::Migration\n")
lines.push("\tdef self.up");

lines.push("\t\tscars_block = Block.find_by_name('Scars of Mirrodin')")

lines.push("\t\tCardSet.create({ :name => 'New Phyrexia', :myr_id => 'NPH'," +
           " :lackey_id => '', :supported_codes=> 'NPH', :block_id => " +
           " scars_block.id, :date => '2011-05'})")

#jhawk initialize the migration here like adding card_set

card_tables.each_with_index do |card_table, index|
  name = card_table.css("table tr:nth-of-type(1) td:nth-of-type(1) a:nth-of-type(2)").attr("name")

  edition = "NPH"

  cost = card_table.css("table tr:nth-of-type(1) td:nth-of-type(2) img").map do |img|
    img.attr("alt").capitalize
  end.join("")
  type = card_table.css("table tr:nth-of-type(2) td:nth-of-type(1)").text

  color = ""
  COLORS.each do |color_letter, color_set|
    color_set.each do |color_code|
      if cost.include?(color_code)
        color = color + "/" if !color.empty?
        color = color + color_letter
        cost.gsub! color_code, color_letter
      end
    end
  end

  #jhawk also do sort_color

  sort_color = ""
  COLOR_LETTERS.each_index do |pos|
    if color.include? COLOR_LETTERS[pos]
      sort_color = sort_color + pos.to_s + COLOR_LETTERS[pos]
    end
  end
  if color.empty?
    sort_color = "6C"
    color = (cost.empty?) ? "Lnd" : "Art"
  end

  card_table.css("table tr:nth-of-type(3) td:nth-of-type(1) img").each do |img|
    img.replace("%" + img.attr("alt").gsub("{", "").gsub("}", ""))
  end
  text = card_table.css("table tr:nth-of-type(3) td:nth-of-type(1)").text.gsub("", "").gsub("\"", "\'");

  power = card_table.css("table tr[style='border-top: 1px dotted #aaa;'] td:nth-of-type(2)") \
      .text.split("/")[0]

  toughness = card_table.css("table tr[style='border-top: 1px dotted #aaa;'] td:nth-of-type(2)") \
      .text.split("/")[1]

  flavor = card_table.css("table tr:nth-of-type(4) td[colspan='3']").text.gsub("", "").gsub("\"", "\'");

  rarity = card_table.css("table tr:nth-of-type(2) td:nth-of-type(2) img").attr("alt").text[0...1] \
      .gsub("B", "C")

  artist = card_table.css("table tr[style='border-top: 1px dotted #aaa;'] td:nth-of-type(1)") \
      .text.match("Illus. (.+) #")
  artist = artist[1] if artist

  number = index + 1

  mana = 0
  mana = $~[0].to_i if cost.match(/\d+/)
  mana += $~[0].size if cost.match(/\D+/)
  mana = -1 if color == "Lnd"



  line = "\t\tCard.create({ "
  line = line + ":name => \"" + name + "\", "
  line = line + ":edition => \"" + edition + "\", "
  line = line + ":color => \"" + color + "\", "
  line = line + ":cost => \"" + cost + "\", "
  line = line + ":type => \"" + type + "\", "
  line = line + ":text => \"" + text + "\", "
  line = line + ":power => \"" + (power ? power : "") + "\", "
  line = line + ":toughness => \"" + (toughness ? toughness : "") + "\", "
  line = line + ":flavor => \"" + flavor + "\", " if flavor
  line = line + ":rarity => \"" + rarity + "\", "
  line = line + ":artist => \"" + artist + "\", "
  line = line + ":number => " + number.to_s + ", "
  line = line + ":mana => " + mana.to_s + ", " unless mana == -1
  line = line + ":power_int => " + ((power.include? "*") ? 99.to_s : power) + ", " if power
  line = line + ":toughness_int => " + ((toughness.include? "*") ? 99.to_s : toughness) + ", " if toughness
  line = line + ":power_text => \"" + power + "\", " if power
  line = line + ":toughness_text => \"" + toughness + "\", " if toughness
  line = line + ":sort_color => \"" + sort_color + "\", "
  line = line + ":sort_set => \"2011-05\"})"

  lines.push(line)
  lines.push("\n")
end
lines.push("\tend")
lines.push("\n")

lines.push("\tdef self.down")
#self.down code goes here
lines.push("\tend")
lines.push("end");

File.open("20110426155800_create_nph.rb", "w") do |file|
  file.puts lines
end

