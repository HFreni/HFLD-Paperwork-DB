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

ActiveRecord::Schema.define(version: 2018_04_28_042059) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "tablefunc"

  create_table "color_frames", force: :cascade do |t|
    t.bigint "color_id"
    t.bigint "spotlight_id"
    t.integer "frame_position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["color_id"], name: "index_color_frames_on_color_id"
    t.index ["spotlight_id"], name: "index_color_frames_on_spotlight_id"
  end

  create_table "colors", force: :cascade do |t|
    t.string "gel_num"
    t.string "gel_name"
    t.string "gel_hex"
    t.bigint "manufacturer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacturer_id"], name: "index_colors_on_manufacturer_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "person_fname"
    t.string "person_lname"
    t.string "person_email"
    t.string "person_phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_cues", force: :cascade do |t|
    t.decimal "number"
    t.decimal "light_cue_number"
    t.string "cue_type"
    t.string "name"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_cues_spotlights", force: :cascade do |t|
    t.bigint "spot_cue_id"
    t.bigint "spotlight_id"
    t.string "size"
    t.string "intensity"
    t.string "action"
    t.decimal "time"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_cue_id"], name: "index_spot_cues_spotlights_on_spot_cue_id"
    t.index ["spotlight_id"], name: "index_spot_cues_spotlights_on_spotlight_id"
  end

  create_table "spotlight_models", force: :cascade do |t|
    t.string "spotlight_name"
    t.float "spotlight_weight"
    t.bigint "manufacturer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacturer_id"], name: "index_spotlight_models_on_manufacturer_id"
  end

  create_table "spotlight_positions", force: :cascade do |t|
    t.string "position_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spotlights", force: :cascade do |t|
    t.string "spotlight_name"
    t.text "spotlight_notes"
    t.bigint "operator_id"
    t.bigint "model_id"
    t.bigint "position_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["model_id"], name: "index_spotlights_on_model_id"
    t.index ["operator_id"], name: "index_spotlights_on_operator_id"
    t.index ["position_id"], name: "index_spotlights_on_position_id"
  end

  add_foreign_key "color_frames", "colors"
  add_foreign_key "color_frames", "spotlights"
  add_foreign_key "spot_cues_spotlights", "spot_cues"
  add_foreign_key "spot_cues_spotlights", "spotlights"
end
