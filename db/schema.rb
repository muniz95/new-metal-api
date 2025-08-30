# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2020_05_18_172335) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "albums", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "album_type"
    t.datetime "album_date", precision: nil
    t.string "genre"
    t.string "format"
    t.string "catalog_id"
    t.text "additional_notes"
    t.text "recording_information"
    t.text "identifiers"
    t.bigint "user_id", null: false
    t.bigint "label_id"
    t.bigint "album_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_albums_on_album_id"
    t.index ["label_id"], name: "index_albums_on_label_id"
    t.index ["user_id"], name: "index_albums_on_user_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "moniker"
    t.datetime "birth", precision: nil
    t.datetime "death", precision: nil
    t.string "gender"
    t.string "district"
    t.string "city"
    t.text "biography"
    t.text "trivia"
    t.bigint "user_id", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_artists_on_country_id"
    t.index ["user_id"], name: "index_artists_on_user_id"
  end

  create_table "band_statuses", force: :cascade do |t|
    t.string "title"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.string "genre"
    t.string "location"
    t.datetime "formed_in", precision: nil
    t.string "themes"
    t.string "photo"
    t.text "info"
    t.boolean "approved"
    t.bigint "user_id", null: false
    t.bigint "band_status_id", null: false
    t.bigint "label_id", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["band_status_id"], name: "index_bands_on_band_status_id"
    t.index ["country_id"], name: "index_bands_on_country_id"
    t.index ["label_id"], name: "index_bands_on_label_id"
    t.index ["user_id"], name: "index_bands_on_user_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discs", force: :cascade do |t|
    t.string "title"
    t.bigint "album_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_discs_on_album_id"
  end

  create_table "labels", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone"
    t.string "status"
    t.string "specialities"
    t.datetime "founding_date", precision: nil
    t.string "online_shopping"
    t.text "additional_notes"
    t.text "description"
    t.text "trivia"
    t.datetime "addition_date", precision: nil
    t.integer "parent_label_id"
    t.bigint "user_id", null: false
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_labels_on_country_id"
    t.index ["user_id"], name: "index_labels_on_user_id"
  end

  create_table "lineups", force: :cascade do |t|
    t.string "role"
    t.bigint "artist_id", null: false
    t.bigint "album_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_lineups_on_album_id"
    t.index ["artist_id"], name: "index_lineups_on_artist_id"
  end

  create_table "links", force: :cascade do |t|
    t.string "site"
    t.string "url"
    t.bigint "artist_id"
    t.bigint "band_id"
    t.bigint "label_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_links_on_artist_id"
    t.index ["band_id"], name: "index_links_on_band_id"
    t.index ["label_id"], name: "index_links_on_label_id"
  end

  create_table "participations", force: :cascade do |t|
    t.bigint "band_id", null: false
    t.bigint "album_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_participations_on_album_id"
    t.index ["band_id"], name: "index_participations_on_band_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.datetime "date", precision: nil
    t.text "content"
    t.string "status"
    t.bigint "album_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["album_id"], name: "index_reviews_on_album_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.integer "start"
    t.integer "end"
    t.string "title"
    t.bigint "band_id", null: false
    t.bigint "artist_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_roles_on_artist_id"
    t.index ["band_id"], name: "index_roles_on_band_id"
  end

  create_table "similarities", force: :cascade do |t|
    t.bigint "left_band_id"
    t.bigint "right_band_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["left_band_id"], name: "index_similarities_on_left_band_id"
    t.index ["right_band_id"], name: "index_similarities_on_right_band_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.float "length"
    t.text "lyrics"
    t.boolean "bonus"
    t.bigint "disc_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["disc_id"], name: "index_songs_on_disc_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.datetime "birth", precision: nil
    t.string "favorite_genres"
    t.text "biography"
    t.string "username"
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at", precision: nil
    t.datetime "remember_created_at", precision: nil
    t.string "jti", default: "", null: false
    t.index ["country_id"], name: "index_users_on_country_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "albums", "albums"
  add_foreign_key "albums", "labels"
  add_foreign_key "albums", "users"
  add_foreign_key "artists", "countries"
  add_foreign_key "artists", "users"
  add_foreign_key "bands", "band_statuses"
  add_foreign_key "bands", "countries"
  add_foreign_key "bands", "labels"
  add_foreign_key "bands", "users"
  add_foreign_key "discs", "albums"
  add_foreign_key "labels", "countries"
  add_foreign_key "labels", "users"
  add_foreign_key "lineups", "albums"
  add_foreign_key "lineups", "artists"
  add_foreign_key "links", "artists"
  add_foreign_key "links", "bands"
  add_foreign_key "links", "labels"
  add_foreign_key "participations", "albums"
  add_foreign_key "participations", "bands"
  add_foreign_key "reviews", "albums"
  add_foreign_key "reviews", "users"
  add_foreign_key "roles", "artists"
  add_foreign_key "roles", "bands"
  add_foreign_key "similarities", "bands", column: "left_band_id"
  add_foreign_key "similarities", "bands", column: "right_band_id"
  add_foreign_key "songs", "discs"
  add_foreign_key "users", "countries"
end
