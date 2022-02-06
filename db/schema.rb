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

ActiveRecord::Schema.define(version: 2022_02_05_093810) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cinemas", force: :cascade do |t|
    t.string "name"
    t.string "movie_title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "seats", force: :cascade do |t|
    t.string "name"
    t.bigint "cinema_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cinema_id"], name: "index_seats_on_cinema_id"
  end

  create_table "tickets", force: :cascade do |t|  
    t.bigint "cinema_id", null: false
    t.bigint "seat_id", null: false
    t.bigint "time_slot_id", null: false
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cinema_id"], name: "index_tickets_on_cinema_id"
    t.index ["seat_id"], name: "index_tickets_on_seat_id"
    t.index ["time_slot_id"], name: "index_tickets_on_time_slot_id"
  end

  create_table "time_slots", force: :cascade do |t|
    t.string "name"
    t.bigint "seat_id", null: false
    t.bigint "cinema_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cinema_id"], name: "index_time_slots_on_cinema_id"
    t.index ["seat_id"], name: "index_time_slots_on_seat_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "mobile_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.integer "role", default: 0
  end

  add_foreign_key "seats", "cinemas"
  add_foreign_key "tickets", "cinemas"
  add_foreign_key "tickets", "seats"
  add_foreign_key "tickets", "time_slots"
  add_foreign_key "time_slots", "cinemas"
  add_foreign_key "time_slots", "seats"
end
