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

ActiveRecord::Schema.define(version: 20150610195408) do

  create_table "customers", force: :cascade do |t|
    t.string   "rfc",          limit: 255
    t.string   "name",         limit: 255
    t.string   "street",       limit: 255
    t.string   "number",       limit: 255
    t.string   "neighborhood", limit: 255
    t.integer  "zc",           limit: 4
    t.string   "city",         limit: 255
    t.string   "state",        limit: 255
    t.string   "country",      limit: 255
    t.string   "phone",        limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "folio",           limit: 255
    t.decimal  "subtotal",                    precision: 15, scale: 2
    t.decimal  "iva",                         precision: 15, scale: 2
    t.decimal  "total",                       precision: 15, scale: 2
    t.string   "written_amount",  limit: 255
    t.string   "payment_method",  limit: 255
    t.string   "account_payment", limit: 255
    t.integer  "customer_id",     limit: 4
    t.datetime "created_at",                                           null: false
    t.datetime "updated_at",                                           null: false
    t.string   "payment_way",     limit: 255
    t.integer  "transmitter_id",  limit: 4
  end

  add_index "documents", ["customer_id"], name: "index_documents_on_customer_id", using: :btree
  add_index "documents", ["transmitter_id"], name: "index_documents_on_transmitter_id", using: :btree

  create_table "file_descriptions", force: :cascade do |t|
    t.integer  "cantidad",    limit: 4
    t.string   "unit",        limit: 255
    t.string   "description", limit: 255
    t.string   "code",        limit: 255
    t.decimal  "price",                   precision: 15, scale: 2
    t.decimal  "amount",                  precision: 15, scale: 2
    t.integer  "document_id", limit: 4
    t.integer  "product_id",  limit: 4
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "file_descriptions", ["document_id"], name: "index_file_descriptions_on_document_id", using: :btree
  add_index "file_descriptions", ["product_id"], name: "index_file_descriptions_on_product_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "code",        limit: 255
    t.string   "unit",        limit: 255
    t.string   "description", limit: 255
    t.decimal  "price",                   precision: 10, scale: 2
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  create_table "transmitters", force: :cascade do |t|
    t.string   "rfc",              limit: 255
    t.string   "name",             limit: 255
    t.string   "street",           limit: 255
    t.string   "number",           limit: 255
    t.string   "neighborhood",     limit: 255
    t.integer  "zc",               limit: 4
    t.string   "city",             limit: 255
    t.string   "state",            limit: 255
    t.string   "country",          limit: 255
    t.string   "phone",            limit: 255
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "document_type",    limit: 255
    t.string   "expedition_place", limit: 255
    t.string   "tax_regime",       limit: 255
  end

  add_foreign_key "documents", "customers"
  add_foreign_key "documents", "transmitters"
  add_foreign_key "file_descriptions", "documents"
  add_foreign_key "file_descriptions", "products"
end
