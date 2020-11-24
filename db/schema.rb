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

ActiveRecord::Schema.define(version: 2020_11_22_220946) do

  create_table "actions", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "comments", force: :cascade do |t|
    t.string "name"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "post_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipments", force: :cascade do |t|
    t.integer "quantity_installed_in_floc"
    t.string "equipment_description"
    t.string "quote_filename"
    t.integer "equipment_number"
    t.integer "quote_line_number"
    t.integer "max_quantity"
    t.integer "reorder_quantity"
    t.string "stock_reason"
    t.integer "stock_method_id"
    t.boolean "over_approval_limit"
  end

  create_table "flocs", force: :cascade do |t|
    t.string "name"
  end

  create_table "games", force: :cascade do |t|
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "player_name"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content", limit: 999999999
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "restocking_methods", force: :cascade do |t|
    t.string "name"
    t.string "description"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.string "description"
  end

  create_table "sap_requests", force: :cascade do |t|
    t.integer "action_id"
    t.integer "user_id"
    t.integer "last_modified_user"
    t.integer "floc_id"
    t.string "comments"
    t.integer "status_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "name"
    t.integer "actionable_role_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "email"
    t.integer "role_id"
  end

end
