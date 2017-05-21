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

ActiveRecord::Schema.define(version: 20170521185437) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stickers", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "description"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_stickers_on_user_id"
  end

  create_table "swap_requests", force: :cascade do |t|
    t.bigint "requester_id"
    t.bigint "requestee_id"
    t.bigint "requester_sticker_id"
    t.bigint "requestee_sticker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "accepted"
    t.index ["requestee_id"], name: "index_swap_requests_on_requestee_id"
    t.index ["requestee_sticker_id"], name: "index_swap_requests_on_requestee_sticker_id"
    t.index ["requester_id"], name: "index_swap_requests_on_requester_id"
    t.index ["requester_sticker_id"], name: "index_swap_requests_on_requester_sticker_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "stickers", "users"
end
