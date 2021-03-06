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

ActiveRecord::Schema.define(version: 20180204185922) do

  create_table "choices", force: :cascade do |t|
    t.integer  "prop_id"
    t.string   "description"
    t.boolean  "correct"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["prop_id"], name: "index_choices_on_prop_id"
  end

  create_table "props", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "user_choices", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "choice_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["choice_id"], name: "index_user_choices_on_choice_id"
    t.index ["user_id"], name: "index_user_choices_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "trash_talk"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
