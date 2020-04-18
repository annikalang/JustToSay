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

ActiveRecord::Schema.define(version: 2020_04_18_110004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appreciations", force: :cascade do |t|
    t.bigint "employee_id"
    t.text "message"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["employee_id"], name: "index_appreciations_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "photo"
    t.string "role"
    t.string "company"
    t.string "department"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "proven_values", force: :cascade do |t|
    t.bigint "appreciation_id", null: false
    t.bigint "value_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appreciation_id"], name: "index_proven_values_on_appreciation_id"
    t.index ["value_id"], name: "index_proven_values_on_value_id"
  end

  create_table "received_appreciations", force: :cascade do |t|
    t.bigint "appreciation_id", null: false
    t.bigint "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appreciation_id"], name: "index_received_appreciations_on_appreciation_id"
    t.index ["employee_id"], name: "index_received_appreciations_on_employee_id"
  end

  create_table "values", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "proven_values", "\"values\"", column: "value_id"
  add_foreign_key "proven_values", "appreciations"
  add_foreign_key "received_appreciations", "appreciations"
  add_foreign_key "received_appreciations", "employees"
end
