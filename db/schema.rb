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

ActiveRecord::Schema.define(version: 2021_08_05_003811) do

  create_table "fantasy_teams", force: :cascade do |t|
    t.string "name"
    t.string "owner"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.string "position"
    t.string "status"
    t.integer "goals"
    t.integer "assists"
    t.integer "saves"
    t.integer "league_id"
    t.integer "fantasy_team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fantasy_team_id"], name: "index_players_on_fantasy_team_id"
    t.index ["league_id"], name: "index_players_on_league_id"
  end

end
