#!/usr/bin/env ruby

require "rubygems"
require "nokogiri"
require "open-uri"

URL = "http://mtgsalvation.com/mirrodin-besieged-spoiler.html"
DELIMITER = "|"

if File.basename(Dir.pwd) != "data"
  puts "This script should be run from deckproxy/data"
  exit 1
end

doc = Nokogiri::HTML(open(URL))

card_tables = doc.css("td[valign=top]")[4..-1]

lines = []

card_tables.each_with_index do |card_table, index|
  name = card_table.css("table tr:nth-of-type(1) td:nth-of-type(1) a:nth-of-type(2)").attr("name")

  edition = "MBS"

  cost = card_table.css("table tr:nth-of-type(1) td:nth-of-type(2) img").map do |img|
    img.attr("alt").capitalize
  end.join("")
  type = card_table.css("table tr:nth-of-type(2) td:nth-of-type(1)").text

  color = ""
  color = "Art" unless index > 142 # Lands
  color = $~[0].split("").uniq.join("/") if cost.match(/\D+/)

  card_table.css("table tr:nth-of-type(3) td:nth-of-type(1) img").each do |img|
    img.replace("%" + img.attr("alt").gsub("{", "").gsub("}", ""))
  end
  text = card_table.css("table tr:nth-of-type(3) td:nth-of-type(1)").text.gsub("", "")

  power = card_table.css("table tr[style='border-top: 1px dotted #aaa;'] td:nth-of-type(2)") \
      .text.split("/")[0]

  toughness = card_table.css("table tr[style='border-top: 1px dotted #aaa;'] td:nth-of-type(2)") \
      .text.split("/")[1]

  flavor = card_table.css("table tr:nth-of-type(4) td[colspan='3']").text.gsub("", "")

  rarity = card_table.css("table tr:nth-of-type(2) td:nth-of-type(2) img").attr("alt").text[0...1] \
      .gsub("B", "C")

  artist = card_table.css("table tr[style='border-top: 1px dotted #aaa;'] td:nth-of-type(1)") \
      .text.match("Illus. (.+) #")
  artist = artist[1] if artist

  number = index + 1

  mana = 0
  mana = $~[0].to_i if cost.match(/\d+/)
  mana += $~[0].size if cost.match(/\D+/)
  mana = "" if mana == 0

  line = [name, edition, color, cost, type, text, power, toughness, \
      flavor, rarity, artist, number, mana].join(DELIMITER)
  lines.push(line)
  lines.push("\n")
end

File.open("sets/mirrodin_besieged.txt", "w") do |file|
  file.puts lines
end

