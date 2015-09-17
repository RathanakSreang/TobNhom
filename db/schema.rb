# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150910125458) do

  create_table "branches", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "url",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "parent_id",  limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "product_images", force: :cascade do |t|
    t.integer  "product_id", limit: 4
    t.string   "image",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "user_id",     limit: 255
    t.string   "tob_id",      limit: 255
    t.integer  "branch_id",   limit: 4
    t.integer  "category_id", limit: 4
    t.string   "name",        limit: 255
    t.string   "sku",         limit: 255
    t.decimal  "price",                   precision: 10
    t.integer  "qty",         limit: 4
    t.boolean  "status",      limit: 1
    t.string   "code",        limit: 255
    t.string   "condition",   limit: 255
    t.float    "discount",    limit: 24
    t.string   "keyword",     limit: 255
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.string   "image",       limit: 255
    t.string   "url",         limit: 255
    t.date     "started_at"
    t.date     "endded_at"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "properties", force: :cascade do |t|
    t.integer  "product_id",  limit: 4
    t.text     "description", limit: 65535
    t.text     "fields",      limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "rates", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "product_id", limit: 4
    t.integer  "count",      limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "product_id", limit: 4
    t.text     "content",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "tob_contacts", force: :cascade do |t|
    t.string   "email",      limit: 255
    t.string   "phone",      limit: 255
    t.string   "social",     limit: 255
    t.integer  "tob_id",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "address1",   limit: 255
    t.string   "address2",   limit: 255
    t.string   "province",   limit: 255
    t.float    "latitude",   limit: 24
    t.float    "longitude",  limit: 24
  end

  create_table "tob_sliders", force: :cascade do |t|
    t.integer  "tob_id",      limit: 4
    t.string   "title",       limit: 255
    t.string   "description", limit: 255
    t.string   "url",         limit: 255
    t.string   "image",       limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "tobs", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.boolean  "status",      limit: 1
    t.string   "description", limit: 255
    t.date     "started_at"
    t.date     "expired_at"
    t.string   "key",         limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "domain",      limit: 255
    t.string   "barcode",     limit: 255
    t.string   "logo",        limit: 255
  end

  create_table "user_contacts", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "phone",      limit: 255
    t.string   "social",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "address1",   limit: 255
    t.string   "address2",   limit: 255
    t.string   "province",   limit: 255
  end

  create_table "user_tobs", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "tob_id",     limit: 4
    t.integer  "role",       limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.integer  "role",       limit: 4
    t.string   "image",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "wish_lists", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "product_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

end
