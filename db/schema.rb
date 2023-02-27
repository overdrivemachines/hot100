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

ActiveRecord::Schema[7.0].define(version: 2023_02_27_092847) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artist_tracks", force: :cascade do |t|
    t.bigint "artist_id", null: false
    t.bigint "track_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id", "track_id"], name: "unique_artist_track", unique: true
    t.index ["artist_id"], name: "index_artist_tracks_on_artist_id"
    t.index ["track_id"], name: "index_artist_tracks_on_track_id"
  end

  create_table "artists", force: :cascade do |t|
    t.string "spotify_id", default: "Spotify ID", null: false
    t.string "name", default: "Artist", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spotify_id"], name: "index_artists_on_spotify_id", unique: true
  end

  create_table "likes", force: :cascade do |t|
    t.string "likable_type", null: false
    t.bigint "likable_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["likable_id", "likable_type"], name: "unique_likes", unique: true
    t.index ["likable_type", "likable_id"], name: "index_likes_on_likable"
  end

  create_table "tracks", force: :cascade do |t|
    t.string "album", default: "Unknown", null: false
    t.string "album_image_url", default: "https://img.freepik.com/free-vector/dark-wavy-shape-with-shinny-light-background_1409-1923.jpg?w=1380", null: false
    t.string "spotify_id", default: "", null: false
    t.string "name", default: "Song Name", null: false
    t.string "preview_url"
    t.string "youtube_url", default: "https://www.youtube.com/watch?v=u31qwQUeGuM", null: false
    t.integer "youtube_likes_count", default: 0, null: false
    t.integer "youtube_views_count", default: 0, null: false
    t.integer "rank", default: -1, null: false
    t.integer "age_top10", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spotify_id"], name: "index_tracks_on_spotify_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name", limit: 100, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

  add_foreign_key "artist_tracks", "artists"
  add_foreign_key "artist_tracks", "tracks"
end
