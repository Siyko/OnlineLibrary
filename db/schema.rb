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

ActiveRecord::Schema.define(version: 20150716094058) do

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.text     "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.date     "year"
    t.text     "publication"
    t.integer  "download_count"
    t.integer  "book_rating"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "author_id"
    t.integer  "genre_id"
    t.string   "book_image_file_name"
    t.string   "book_image_content_type"
    t.integer  "book_image_file_size"
    t.datetime "book_image_updated_at"
    t.text     "description"
  end

  add_index "books", ["author_id"], name: "index_books_on_author_id"
  add_index "books", ["genre_id"], name: "index_books_on_genre_id"

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "book_id"
  end

  add_index "favorites", ["book_id"], name: "index_favorites_on_book_id"
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id"

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histories", force: :cascade do |t|
    t.date     "download_date"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "user_id"
    t.integer  "book_id"
  end

  add_index "histories", ["book_id"], name: "index_histories_on_book_id"
  add_index "histories", ["user_id"], name: "index_histories_on_user_id"

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id"

  create_table "reviews", force: :cascade do |t|
    t.text     "comment"
    t.integer  "rating"
    t.integer  "user_id"
    t.integer  "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "surname"
    t.integer  "age"
    t.string   "number"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
