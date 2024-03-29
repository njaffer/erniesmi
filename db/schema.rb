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

ActiveRecord::Schema.define(version: 2022_12_24_052206) do

  create_table "acategories", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "acities", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "acounties", force: :cascade do |t|
    t.string "name"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "archives", force: :cascade do |t|
    t.text "caption"
    t.string "fname"
    t.string "path"
    t.string "pdate"
    t.string "pyear"
    t.text "county"
    t.string "county1"
    t.string "county2"
    t.string "county3"
    t.string "county4"
    t.string "county5"
    t.string "county6"
    t.string "county7"
    t.string "county8"
    t.string "county9"
    t.string "county10"
    t.string "city"
    t.string "city1"
    t.string "city2"
    t.string "city3"
    t.string "city4"
    t.string "city5"
    t.string "city6"
    t.string "city7"
    t.string "city8"
    t.string "city9"
    t.string "city10"
    t.string "city11"
    t.text "category"
    t.string "category1"
    t.string "category2"
    t.string "category3"
    t.string "category4"
    t.string "category5"
    t.string "category6"
    t.string "category7"
    t.string "category8"
    t.string "category9"
    t.string "category10"
    t.string "category11"
    t.string "category12"
    t.string "category13"
    t.string "category14"
    t.string "category15"
    t.string "category16"
    t.string "category17"
    t.string "category18"
    t.string "category19"
    t.string "category20"
    t.string "state"
    t.string "state1"
    t.string "state2"
    t.string "state3"
    t.string "state4"
    t.string "state5"
    t.string "state6"
    t.string "options"
    t.string "options1"
    t.string "options2"
    t.float "cost"
    t.float "price"
    t.float "picval"
    t.boolean "cover_page"
    t.boolean "pic_status"
    t.integer "ptype"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "old_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genealogies", force: :cascade do |t|
    t.string "name"
    t.string "town"
    t.string "dt"
    t.string "county"
    t.boolean "emi"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "guides", force: :cascade do |t|
    t.string "tag"
    t.text "oneline"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "manuscripts", force: :cascade do |t|
    t.string "mnum"
    t.string "c_or_s"
    t.string "ste"
    t.string "town"
    t.string "m"
    t.string "dd"
    t.string "yr"
    t.string "marking"
    t.string "county"
    t.boolean "emi"
    t.integer "old_id"
    t.integer "new_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "missionaries", force: :cascade do |t|
    t.string "city"
    t.string "txt"
    t.string "pdate"
    t.string "ahms"
    t.integer "pid"
    t.integer "emi"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "permits", force: :cascade do |t|
    t.string "email"
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "searches", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stamps", force: :cascade do |t|
    t.string "cName"
    t.string "pName"
    t.string "Address"
    t.string "MTimes"
    t.string "Waddr"
    t.string "Com"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_archives", force: :cascade do |t|
    t.string "email"
    t.integer "a_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "views", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_views_on_email", unique: true
    t.index ["reset_password_token"], name: "index_views_on_reset_password_token", unique: true
  end

end
