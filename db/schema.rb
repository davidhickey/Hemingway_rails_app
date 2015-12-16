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

ActiveRecord::Schema.define(version: 20151215190146) do

  create_table "articles", force: :cascade do |t|
    t.string   "author"
    t.string   "title"
    t.text     "truth"
    t.text     "body"
    t.text     "bev_and_food"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "authors", force: :cascade do |t|
    t.string   "username",                                                              null: false
    t.string   "email",                                                                 null: false
    t.string   "crypted_password",                                                      null: false
    t.string   "salt",                                                                  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "bio"
    t.text     "#<ActiveRecord::ConnectionAdapters::TableDefinition:0x007fdb9a47fc20>"
  end

  add_index "authors", ["email"], name: "index_authors_on_email", unique: true

end
