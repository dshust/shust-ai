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

ActiveRecord::Schema[8.1].define(version: 2026_02_28_184944) do
  create_table "enva_services", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "emoji"
    t.text "generated_html"
    t.string "name"
    t.text "prompt"
    t.boolean "published"
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "description"
    t.string "emoji"
    t.string "name"
    t.integer "position"
    t.string "screenshot_url"
    t.string "tag"
    t.datetime "updated_at", null: false
    t.string "url"
  end
end
