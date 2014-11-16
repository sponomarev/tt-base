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

ActiveRecord::Schema.define(version: 20141113224434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "obch_dolg_200909201306", force: true, comment: "(17)Obch_DOLG_2009_09_2013_06" do |t|
    t.integer  "account",                                  comment: "№ л.сч"
    t.string   "street",                                   comment: "Улица"
    t.string   "house",                                    comment: "№ Дома"
    t.string   "appartment",                               comment: "№ Квартиры"
    t.string   "lastname",                                 comment: "Фамилия"
    t.string   "firstname",                                comment: "Имя"
    t.string   "middlename",                               comment: "Отчество"
    t.date     "period",                                   comment: "Период"
    t.string   "service",                                  comment: "Услуга"
    t.decimal  "opening_balance",  precision: 8, scale: 2, comment: "Входящее сальдо"
    t.decimal  "earn",             precision: 8, scale: 2, comment: "Начислено"
    t.decimal  "benefit",          precision: 8, scale: 2, comment: "Льгота"
    t.decimal  "recalculation",    precision: 8, scale: 2, comment: "Разовый перерасчет"
    t.decimal  "compensation",     precision: 8, scale: 2, comment: "Компенсация"
    t.decimal  "payable",          precision: 8, scale: 2, comment: "К оплате"
    t.decimal  "payment",          precision: 8, scale: 2, comment: "Оплата"
    t.decimal  "outgoing_balance", precision: 8, scale: 2, comment: "Исходящее сальдо"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "obch_dolg_200909201306", ["account"], name: "index_obch_dolg_200909201306_on_account", using: :btree
  add_index "obch_dolg_200909201306", ["appartment"], name: "index_obch_dolg_200909201306_on_appartment", using: :btree
  add_index "obch_dolg_200909201306", ["benefit"], name: "index_obch_dolg_200909201306_on_benefit", using: :btree
  add_index "obch_dolg_200909201306", ["compensation"], name: "index_obch_dolg_200909201306_on_compensation", using: :btree
  add_index "obch_dolg_200909201306", ["earn"], name: "index_obch_dolg_200909201306_on_earn", using: :btree
  add_index "obch_dolg_200909201306", ["firstname"], name: "index_obch_dolg_200909201306_on_firstname", using: :btree
  add_index "obch_dolg_200909201306", ["house"], name: "index_obch_dolg_200909201306_on_house", using: :btree
  add_index "obch_dolg_200909201306", ["lastname"], name: "index_obch_dolg_200909201306_on_lastname", using: :btree
  add_index "obch_dolg_200909201306", ["middlename"], name: "index_obch_dolg_200909201306_on_middlename", using: :btree
  add_index "obch_dolg_200909201306", ["opening_balance"], name: "index_obch_dolg_200909201306_on_opening_balance", using: :btree
  add_index "obch_dolg_200909201306", ["outgoing_balance"], name: "index_obch_dolg_200909201306_on_outgoing_balance", using: :btree
  add_index "obch_dolg_200909201306", ["payable"], name: "index_obch_dolg_200909201306_on_payable", using: :btree
  add_index "obch_dolg_200909201306", ["payment"], name: "index_obch_dolg_200909201306_on_payment", using: :btree
  add_index "obch_dolg_200909201306", ["period"], name: "index_obch_dolg_200909201306_on_period", using: :btree
  add_index "obch_dolg_200909201306", ["recalculation"], name: "index_obch_dolg_200909201306_on_recalculation", using: :btree
  add_index "obch_dolg_200909201306", ["service"], name: "index_obch_dolg_200909201306_on_service", using: :btree
  add_index "obch_dolg_200909201306", ["street"], name: "index_obch_dolg_200909201306_on_street", using: :btree

end
