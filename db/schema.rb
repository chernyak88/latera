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

ActiveRecord::Schema.define(version: 2019_07_18_130702) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "books", force: :cascade do |t|
    t.string "book_title"
    t.string "book_author"
    t.string "book_code"
    t.string "book_publisher"
    t.integer "book_public_year"
    t.integer "book_price"
    t.date "book_receipt_date"
    t.integer "library_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.string "lib_num"
    t.string "lib_name"
    t.string "lib_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subscribers", force: :cascade do |t|
    t.integer "sub_ticket"
    t.string "sub_surname"
    t.string "sub_name"
    t.string "sub_patronymic"
    t.string "sub_address"
    t.bigint "sub_phone"
    t.integer "library_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workers", force: :cascade do |t|
    t.string "worker_surname"
    t.string "worker_name"
    t.string "worker_patronymic"
    t.date "worker_birth_date"
    t.date "worker_employment_date"
    t.string "worker_position"
    t.string "worker_education"
    t.integer "library_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
