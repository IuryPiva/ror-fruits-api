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

ActiveRecord::Schema.define(version: 2020_10_05_232306) do

  create_table "fruits", force: :cascade do |t|
    t.string "name"
    t.string "permalink"
    t.string "description"
    t.string "price"
    t.string "unit_to_display"
    t.integer "unit_value"
    t.integer "on_hand"
    t.integer "taxon_id"
    t.integer "image_id"
    t.index ["image_id"], name: "index_fruits_on_image_id"
    t.index ["taxon_id"], name: "index_fruits_on_taxon_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "alt"
    t.string "thumb_url"
    t.string "small_url"
    t.string "image_url"
    t.string "large_url"
  end

  create_table "taxons", force: :cascade do |t|
    t.string "name"
    t.string "permalink"
  end

  add_foreign_key "fruits", "images"
  add_foreign_key "fruits", "taxons"
end
