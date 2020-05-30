# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_24_181258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "campaigns", force: :cascade do |t|
    t.string "name"
    t.string "ident"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "initiative_cards", force: :cascade do |t|
    t.string "name"
    t.string "attribute"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_initiative_cards_on_name"
  end

  create_table "initiative_deck_entries", force: :cascade do |t|
    t.bigint "scenario_id", null: false
    t.bigint "initiative_card_id", null: false
    t.integer "quantity", default: 1
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["initiative_card_id"], name: "index_initiative_deck_entries_on_initiative_card_id"
    t.index ["scenario_id"], name: "index_initiative_deck_entries_on_scenario_id"
  end

  create_table "scenarios", force: :cascade do |t|
    t.string "name"
    t.bigint "campaign_id", null: false
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["campaign_id"], name: "index_scenarios_on_campaign_id"
  end

  add_foreign_key "initiative_deck_entries", "initiative_cards"
  add_foreign_key "initiative_deck_entries", "scenarios"
  add_foreign_key "scenarios", "campaigns"
end
