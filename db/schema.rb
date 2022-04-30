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

ActiveRecord::Schema[7.0].define(version: 2022_04_30_221350) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

  create_table "destinations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "street_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["street_id"], name: "index_destinations_on_street_id"
    t.index ["user_id"], name: "index_destinations_on_user_id"
  end

  create_table "streets", force: :cascade do |t|
    t.bigint "country_id", null: false
    t.string "city"
    t.string "street_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "longitude"
    t.string "latitude"
    t.index ["country_id"], name: "index_streets_on_country_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "password_hash"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
  end

  add_foreign_key "destinations", "streets"
  add_foreign_key "destinations", "users"
  add_foreign_key "streets", "countries"
end
