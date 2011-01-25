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

ActiveRecord::Schema.define(:version => 20110125081648) do

  create_table "cards", :force => true do |t|
    t.string  "name",       :limit => 1024
    t.string  "edition",    :limit => 1024
    t.string  "color",      :limit => 1024
    t.string  "cost",       :limit => 1024
    t.string  "type",       :limit => 1024
    t.string  "text",       :limit => 1024
    t.string  "power",      :limit => 1024
    t.string  "toughness",  :limit => 1024
    t.string  "flavor",     :limit => 1024
    t.string  "rarity",     :limit => 1024
    t.string  "artist",     :limit => 1024
    t.integer "number"
    t.integer "mana"
    t.string  "internal",   :limit => 1024
    t.integer "type_index"
  end

  create_table "decks", :force => true do |t|
    t.string   "name",       :limit => 1024
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "deck_hash"
  end

  add_index "decks", ["deck_hash"], :name => "index_decks_on_deck_hash", :unique => true

  create_table "packs", :force => true do |t|
    t.integer "deck_id",                :null => false
    t.integer "card_id",                :null => false
    t.integer "number",  :default => 1
  end

  add_index "packs", ["deck_id", "card_id"], :name => "index_packs_on_deck_id_and_card_id", :unique => true
  add_index "packs", ["deck_id"], :name => "index_packs_on_deck_id"

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
