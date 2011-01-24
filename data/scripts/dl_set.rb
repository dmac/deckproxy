#!/usr/bin/env ruby

require "rubygems"
require "sequel"

if ARGV.size == 0
  puts "Usage: dl_set.rb <set code> [-d]"
  puts "  -d: dry-run"
  exit 1
end

set_name_map = {
  "a" => "al",
  "al" => "ai",
  "are" => "arena",
  "b" => "be",
  "bin" => "mbp",
  "brb" => "br",
  "chp" => "cp",
  "cst" => "cstd",
  "dd2" => "jvc",
  "ddc" => "dvd",
  "ddd" => "gvl",
  "dde" => "pvc",
  "dis" => "di",
  "dlm" => "dcilm",
  "drb" => "fvd",
  "fd" => "5dn",
  "fnm" => "fnmp",
  "gtw" => "grc",
  "h09" => "pds",
  "hhl" => "hho",
  "hop" => "pch",
  "i2p" => "itp",
  "lrw" => "lw",
  "jgc" => "jr",
  "mi" => "mr",
  "mr" => "mi",
  "mgd" => "mgdc",
  "mor" => "mt",
  "mpr" => "mprp",
  "p2" => "po2",
  "p3" => "p3k",
  "plc" => "pc",
  "pre" => "ptc",
  "pt" => "po",
  "ptr" => "pro",
  "py" => "pr",
  "r" => "rv",
  "rel" => "mlp",
  "s00" => "st2k",
  "te" => "tp",
  "thg" => "thgt",
  "to" => "tr",
  "tsb" => "tsts",
  "tsp" => "ts",
  "u" => "un",
  "unh" => "uh",
  "v09" => "fve",
  "v10" => "fvr",
}

set_name = ARGV[0]
set_name_upper = set_name.upcase
set_name_lower = set_name.downcase

set_url_name = set_name_map.include?(set_name_lower) ?
               set_name_map[set_name_lower] : set_name_lower
URL_PREFIX = "http://magiccards.info/scans/en/#{set_url_name}"

system("ln -s ../master.db master.db")
DB = Sequel.connect("sqlite://master.db")
num_cards_in_set = DB[:cards].filter(:edition => set_name_upper).count
puts "#{num_cards_in_set} cards in #{set_name_upper}"
system("rm master.db")

system("mkdir -p #{set_name_lower}")

threads = []
num_cards_in_set.times do |i|
  url = "#{URL_PREFIX}/#{i+1}.jpg"
  out = "#{set_name_lower}/#{i+1}.jpg"
  puts "#{url} -> #{out}"
  unless ARGV.include? "-d"
    threads << Thread.new(url, out) do |url, out|
      system("wget -q #{url} -O #{out}")
    end
  end
end

threads.each { |thread|  thread.join }

