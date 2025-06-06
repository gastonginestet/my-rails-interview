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

ActiveRecord::Schema[7.0].define(version: 2025_06_05_184308) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "todo_items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.boolean "completed", default: false
    t.bigint "todo_list_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["todo_list_id", "name"], name: "index_todo_items_on_todo_list_id_and_name", unique: true
    t.index ["todo_list_id"], name: "index_todo_items_on_todo_list_id"
  end

  create_table "todo_lists", force: :cascade do |t|
    t.string "name", null: false
  end

  add_foreign_key "todo_items", "todo_lists"
end
