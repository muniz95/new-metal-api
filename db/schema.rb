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

ActiveRecord::Schema.define(version: 2020_05_13_020639) do

  create_table "band_statuses", force: :cascade do |t|
    t.string "title"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "status"
    t.string "specialities"
    t.datetime "founding_date"
    t.string "online_shopping"
    t.text "additional_notes"
    t.text "description"
    t.text "trivia"
    t.string "added_by"
    t.datetime "addition_date"
    t.integer "parent_label_id"
    t.integer "country_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["country_id"], name: "index_labels_on_country_id"
  end

  add_foreign_key "labels", "countries"
end
