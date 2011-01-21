# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110119041655) do

  create_table "cards", :force => true do |t|
    t.string  "name"
    t.string  "edition"
    t.string  "color"
    t.string  "cost"
    t.string  "type"
    t.string  "text"
    t.string  "power"
    t.string  "toughness"
    t.string  "flavor"
    t.string  "rarity"
    t.string  "artist"
    t.integer "number"
    t.integer "mana"
    t.string  "internal"
    t.integer "type_index"
  end

end
