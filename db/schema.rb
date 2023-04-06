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

ActiveRecord::Schema[7.0].define(version: 2023_04_06_032338) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experiences", force: :cascade do |t|
    t.string "name"
    t.string "organization"
    t.string "fromMonth"
    t.integer "fromYear"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.index ["user_id"], name: "index_experiences_on_user_id"
  end

  create_table "strengths", force: :cascade do |t|
    t.string "name"
    t.string "proficiency"
    t.integer "recomendations"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_strengths_id", null: false
    t.index ["user_strengths_id"], name: "index_strengths_on_user_strengths_id"
  end

  create_table "user_strengths", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id", null: false
    t.bigint "strength_id", null: false
    t.index ["strength_id"], name: "index_user_strengths_on_strength_id"
    t.index ["user_id"], name: "index_user_strengths_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "experience_id", null: false
    t.bigint "user_strengths_id", null: false
    t.index ["experience_id"], name: "index_users_on_experience_id"
    t.index ["user_strengths_id"], name: "index_users_on_user_strengths_id"
  end

  add_foreign_key "experiences", "users"
  add_foreign_key "strengths", "user_strengths", column: "user_strengths_id"
  add_foreign_key "user_strengths", "strengths"
  add_foreign_key "user_strengths", "users"
  add_foreign_key "users", "experiences"
  add_foreign_key "users", "user_strengths", column: "user_strengths_id"
end
