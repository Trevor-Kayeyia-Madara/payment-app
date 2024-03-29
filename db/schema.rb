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

ActiveRecord::Schema[7.1].define(version: 2023_12_29_143036) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.string "guest_folio"
    t.string "guest_no"
    t.string "first_name"
    t.string "surname"
    t.string "email"
    t.string "telephone_number"
    t.string "room_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "room_id", null: false
    t.index ["room_id"], name: "index_guests_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.string "room_type"
    t.integer "guest_capacity"
    t.decimal "rates"
    t.date "arrival_date"
    t.date "departure_date"
    t.integer "number_of_nights"
    t.string "room_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.string "guest_folio"
    t.string "transaction_type"
    t.decimal "accommodation_account"
    t.decimal "extras"
    t.decimal "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "guest_id", null: false
    t.index ["guest_id"], name: "index_transactions_on_guest_id"
  end

  add_foreign_key "guests", "rooms"
  add_foreign_key "transactions", "guests"
end
