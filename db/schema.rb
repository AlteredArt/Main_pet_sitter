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

ActiveRecord::Schema.define(version: 2020_01_23_000442) do

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.integer "pet_id"
    t.integer "sitter_id"
    t.index ["pet_id"], name: "index_appointments_on_pet_id"
    t.index ["sitter_id"], name: "index_appointments_on_sitter_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.string "kind"
    t.integer "age"
    t.integer "owner_id"
    t.index ["owner_id"], name: "index_pets_on_owner_id"
  end

  create_table "sitters", force: :cascade do |t|
    t.string "name_of_company"
  end

  add_foreign_key "appointments", "pets"
  add_foreign_key "appointments", "sitters"
end
