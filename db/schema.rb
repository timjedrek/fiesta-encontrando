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

ActiveRecord::Schema[7.0].define(version: 2022_07_10_024954) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attending_fiesta", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "fiestum_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fiestum_id"], name: "index_attending_fiesta_on_fiestum_id"
    t.index ["user_id"], name: "index_attending_fiesta_on_user_id"
  end

  create_table "fiesta", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.datetime "fetcha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "creator_id", null: false
    t.string "lugar", null: false
    t.index ["creator_id"], name: "index_fiesta_on_creator_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_users_on_username"
  end

  add_foreign_key "attending_fiesta", "fiesta"
  add_foreign_key "attending_fiesta", "users"
  add_foreign_key "fiesta", "users", column: "creator_id"
end
