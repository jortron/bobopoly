# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151001212657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "board_games", force: :cascade do |t|
    t.string   "game_name"
    t.integer  "game_rating"
    t.string   "game_type"
    t.integer  "player_number", null: false
    t.integer  "player_age",    null: false
    t.integer  "game_time"
    t.integer  "user_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "board_games", ["game_name"], name: "index_board_games_on_game_name", using: :btree
  add_index "board_games", ["game_type"], name: "index_board_games_on_game_type", using: :btree
  add_index "board_games", ["user_id"], name: "index_board_games_on_user_id", using: :btree

  create_table "microposts", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "picture"
  end

  add_index "microposts", ["user_id", "created_at"], name: "index_microposts_on_user_id_and_created_at", using: :btree
  add_index "microposts", ["user_id"], name: "index_microposts_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.text     "avatar_url"
    t.integer  "age"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

  create_table "venues", force: :cascade do |t|
    t.string   "venue_name"
    t.string   "venue_location"
    t.integer  "venue_rating"
    t.boolean  "game_night"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "venues", ["venue_location"], name: "index_venues_on_venue_location", using: :btree
  add_index "venues", ["venue_name"], name: "index_venues_on_venue_name", using: :btree

  add_foreign_key "microposts", "users"
end
