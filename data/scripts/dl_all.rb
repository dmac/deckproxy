#!/usr/bin/env ruby

require "rubygems"
require "sequel"

system("ln -s ../master.db master.db")
DB = Sequel.connect("sqlite://master.db")
set_names = DB[:cards].select(:edition).distinct.map { |row| row[:edition] }
system("rm master.db")

set_names.each do |set_name|
  system("./dl_set.rb #{set_name}")
  puts ""
end

