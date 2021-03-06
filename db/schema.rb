# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171113114636) do

  create_table "conditions", force: :cascade do |t|
    t.string "get_title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "exhibitions", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gallery_id"
    t.index ["gallery_id"], name: "index_exhibitions_on_gallery_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "name"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "uri"
    t.integer "get_exhibition_id"
    t.index ["get_exhibition_id"], name: "index_galleries_on_get_exhibition_id"
  end

  create_table "get_exhibitions", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "image"
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gallery_id"
    t.index ["gallery_id"], name: "index_get_exhibitions_on_gallery_id"
  end

end
