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

ActiveRecord::Schema.define(version: 20170330082417) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string   "drug_form"
    t.string   "pack_form"
    t.string   "schedule"
    t.boolean  "is_h1"
    t.boolean  "is_chronic"
    t.string   "use_form"
    t.string   "use_form_head"
    t.string   "therapeutic"
    t.integer  "product_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "qty_per_pack"
    t.string   "name"
    t.string   "brand"
    t.integer  "manufacturer_id"
    t.boolean  "is_banned"
    t.float    "min_mrp"
    t.float    "max_mrp"
    t.boolean  "is_refrigerated"
    t.integer  "created_by"
    t.boolean  "is_verified"
    t.integer  "category_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "attribute_id"
  end

  create_table "testmodels", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
