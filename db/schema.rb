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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_11_29_114127) do
=======
ActiveRecord::Schema.define(version: 2021_11_26_132008) do
>>>>>>> 14d1d558f60674de4f4fe3c73b6f1d4bd73c3a19

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "band_members", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "band_id", null: false
    t.boolean "is_member"
    t.boolean "is_admin"
    t.boolean "is_audition"
    t.string "invitation_text"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["band_id"], name: "index_band_members_on_band_id"
    t.index ["user_id"], name: "index_band_members_on_user_id"
  end

  create_table "bands", force: :cascade do |t|
    t.string "name"
    t.integer "current_member_count"
    t.string "location"
    t.string "bio"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "genre"
    t.string "image_url"
    t.string "spotify_embed_url"
<<<<<<< HEAD
    t.boolean "looking_for_member"
=======
>>>>>>> 14d1d558f60674de4f4fe3c73b6f1d4bd73c3a19
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "user_id", null: false
    t.bigint "band_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["band_id"], name: "index_messages_on_band_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

<<<<<<< HEAD
  create_table "song_files", force: :cascade do |t|
    t.string "text_content"
    t.bigint "song_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["song_id"], name: "index_song_files_on_song_id"
  end

  create_table "songs", force: :cascade do |t|
    t.string "name"
    t.bigint "band_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["band_id"], name: "index_songs_on_band_id"
=======
  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
>>>>>>> 14d1d558f60674de4f4fe3c73b6f1d4bd73c3a19
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "location"
    t.string "bio"
    t.string "genre"
    t.string "avatar_url"
<<<<<<< HEAD
=======
    t.string "provider"
    t.string "uid"
>>>>>>> 14d1d558f60674de4f4fe3c73b6f1d4bd73c3a19
    t.string "instrument"
    t.boolean "looking_for_band", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "band_members", "bands"
  add_foreign_key "band_members", "users"
  add_foreign_key "messages", "bands"
  add_foreign_key "messages", "users"
<<<<<<< HEAD
  add_foreign_key "song_files", "songs"
  add_foreign_key "songs", "bands"
=======
>>>>>>> 14d1d558f60674de4f4fe3c73b6f1d4bd73c3a19
end
