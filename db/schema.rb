# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_02_01_121447) do
  create_table "books", force: :cascade do |t|
    t.bigint "ISBN"
    t.string "title"
    t.string "author"
    t.string "genere"
    t.integer "publish_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "name"
    t.date "date_of_birth"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "gender"
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "book_id"
    t.integer "member_id"
    t.date "issue_date"
    t.date "due_date"
    t.date "return_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_transactions_on_book_id"
    t.index ["member_id"], name: "index_transactions_on_member_id"
  end

  add_foreign_key "transactions", "books"
  add_foreign_key "transactions", "members"
end
