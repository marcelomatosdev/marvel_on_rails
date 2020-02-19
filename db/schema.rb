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

ActiveRecord::Schema.define(version: 2020_02_19_181759) do

  create_table "character_comics", force: :cascade do |t|
    t.integer "hero_id", null: false
    t.integer "comic_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["comic_id"], name: "index_character_comics_on_comic_id"
    t.index ["hero_id"], name: "index_character_comics_on_hero_id"
  end

  create_table "comics", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "modified"
    t.integer "page_count"
    t.string "image_path"
    t.string "image_extension"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "thumbnail_path"
    t.string "thumbnail_extension"
  end

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "thumbnail_path"
    t.string "thumbnail_extension"
    t.string "description"
    t.string "planet"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "character_comics", "comics"
  add_foreign_key "character_comics", "heros"
end
