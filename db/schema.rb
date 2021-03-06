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

ActiveRecord::Schema.define(version: 20150706200321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

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

  create_table "obch_dolg_201307201406", force: true, comment: "(17)Obch_DOLG_2013_07_2014_06" do |t|
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

  add_index "obch_dolg_201307201406", ["account"], name: "index_obch_dolg_201307201406_on_account", using: :btree
  add_index "obch_dolg_201307201406", ["appartment"], name: "index_obch_dolg_201307201406_on_appartment", using: :btree
  add_index "obch_dolg_201307201406", ["benefit"], name: "index_obch_dolg_201307201406_on_benefit", using: :btree
  add_index "obch_dolg_201307201406", ["compensation"], name: "index_obch_dolg_201307201406_on_compensation", using: :btree
  add_index "obch_dolg_201307201406", ["earn"], name: "index_obch_dolg_201307201406_on_earn", using: :btree
  add_index "obch_dolg_201307201406", ["firstname"], name: "index_obch_dolg_201307201406_on_firstname", using: :btree
  add_index "obch_dolg_201307201406", ["house"], name: "index_obch_dolg_201307201406_on_house", using: :btree
  add_index "obch_dolg_201307201406", ["lastname"], name: "index_obch_dolg_201307201406_on_lastname", using: :btree
  add_index "obch_dolg_201307201406", ["middlename"], name: "index_obch_dolg_201307201406_on_middlename", using: :btree
  add_index "obch_dolg_201307201406", ["opening_balance"], name: "index_obch_dolg_201307201406_on_opening_balance", using: :btree
  add_index "obch_dolg_201307201406", ["outgoing_balance"], name: "index_obch_dolg_201307201406_on_outgoing_balance", using: :btree
  add_index "obch_dolg_201307201406", ["payable"], name: "index_obch_dolg_201307201406_on_payable", using: :btree
  add_index "obch_dolg_201307201406", ["payment"], name: "index_obch_dolg_201307201406_on_payment", using: :btree
  add_index "obch_dolg_201307201406", ["period"], name: "index_obch_dolg_201307201406_on_period", using: :btree
  add_index "obch_dolg_201307201406", ["recalculation"], name: "index_obch_dolg_201307201406_on_recalculation", using: :btree
  add_index "obch_dolg_201307201406", ["service"], name: "index_obch_dolg_201307201406_on_service", using: :btree
  add_index "obch_dolg_201307201406", ["street"], name: "index_obch_dolg_201307201406_on_street", using: :btree

  create_table "obch_peni200909201306", force: true, comment: "(7)Obch_PENI_2009_09_2013_06" do |t|
    t.integer  "account",                            comment: "№ л.сч"
    t.date     "period",                             comment: "Период"
    t.string   "service",                            comment: "Услуга"
    t.decimal  "percent",    precision: 8, scale: 4, comment: "Процент"
    t.decimal  "earn",       precision: 8, scale: 2, comment: "Начислено пени"
    t.decimal  "paid",       precision: 8, scale: 2, comment: "Оплачено пени"
    t.decimal  "debt",       precision: 8, scale: 2, comment: "Задолженность по пени"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "obch_peni200909201306", ["account"], name: "index_obch_peni200909201306_on_account", using: :btree
  add_index "obch_peni200909201306", ["debt"], name: "index_obch_peni200909201306_on_debt", using: :btree
  add_index "obch_peni200909201306", ["earn"], name: "index_obch_peni200909201306_on_earn", using: :btree
  add_index "obch_peni200909201306", ["paid"], name: "index_obch_peni200909201306_on_paid", using: :btree
  add_index "obch_peni200909201306", ["percent"], name: "index_obch_peni200909201306_on_percent", using: :btree
  add_index "obch_peni200909201306", ["period"], name: "index_obch_peni200909201306_on_period", using: :btree
  add_index "obch_peni200909201306", ["service"], name: "index_obch_peni200909201306_on_service", using: :btree

  create_table "obch_peni201307201406", force: true, comment: "(7)Obch_PENI_2013_07_2014_06" do |t|
    t.integer  "account",                            comment: "№ л.сч"
    t.date     "period",                             comment: "Период"
    t.string   "service",                            comment: "Услуга"
    t.decimal  "percent",    precision: 8, scale: 4, comment: "Процент"
    t.decimal  "earn",       precision: 8, scale: 2, comment: "Начислено пени"
    t.decimal  "paid",       precision: 8, scale: 2, comment: "Оплачено пени"
    t.decimal  "debt",       precision: 8, scale: 2, comment: "Задолженность по пени"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "obch_peni201307201406", ["account"], name: "index_obch_peni201307201406_on_account", using: :btree
  add_index "obch_peni201307201406", ["debt"], name: "index_obch_peni201307201406_on_debt", using: :btree
  add_index "obch_peni201307201406", ["earn"], name: "index_obch_peni201307201406_on_earn", using: :btree
  add_index "obch_peni201307201406", ["paid"], name: "index_obch_peni201307201406_on_paid", using: :btree
  add_index "obch_peni201307201406", ["percent"], name: "index_obch_peni201307201406_on_percent", using: :btree
  add_index "obch_peni201307201406", ["period"], name: "index_obch_peni201307201406_on_period", using: :btree
  add_index "obch_peni201307201406", ["service"], name: "index_obch_peni201307201406_on_service", using: :btree

  create_table "yk_pro_peni", force: true, comment: "YK_PRO_PENI" do |t|
    t.integer  "account",                             comment: "№ л.сч"
    t.date     "period",                              comment: "Период"
    t.string   "service",                             comment: "Услуга"
    t.decimal  "percent",    precision: 16, scale: 4, comment: "Процент"
    t.decimal  "earn",       precision: 16, scale: 2, comment: "Начислено пени"
    t.decimal  "paid",       precision: 16, scale: 2, comment: "Оплачено пени"
    t.decimal  "debt",       precision: 16, scale: 2, comment: "Задолженность по пени"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "yk_pro_peni", ["account"], name: "index_yk_pro_peni_on_account", using: :btree
  add_index "yk_pro_peni", ["debt"], name: "index_yk_pro_peni_on_debt", using: :btree
  add_index "yk_pro_peni", ["earn"], name: "index_yk_pro_peni_on_earn", using: :btree
  add_index "yk_pro_peni", ["paid"], name: "index_yk_pro_peni_on_paid", using: :btree
  add_index "yk_pro_peni", ["percent"], name: "index_yk_pro_peni_on_percent", using: :btree
  add_index "yk_pro_peni", ["period"], name: "index_yk_pro_peni_on_period", using: :btree
  add_index "yk_pro_peni", ["service"], name: "index_yk_pro_peni_on_service", using: :btree

  create_table "yk_pro_saldo", force: true, comment: "YK Pro Saldo" do |t|
    t.integer  "account",                                   comment: "№ л.сч"
    t.string   "street",                                    comment: "Улица"
    t.string   "house",                                     comment: "№ Дома"
    t.string   "appartment",                                comment: "№ Квартиры"
    t.string   "lastname",                                  comment: "Фамилия"
    t.string   "firstname",                                 comment: "Имя"
    t.string   "middlename",                                comment: "Отчество"
    t.date     "period",                                    comment: "Период"
    t.string   "service",                                   comment: "Услуга"
    t.decimal  "opening_balance",  precision: 16, scale: 2, comment: "Входящее сальдо"
    t.decimal  "earn",             precision: 16, scale: 2, comment: "Начислено"
    t.decimal  "benefit",          precision: 16, scale: 2, comment: "Льгота"
    t.decimal  "recalculation",    precision: 16, scale: 2, comment: "Разовый перерасчет"
    t.decimal  "compensation",     precision: 16, scale: 2, comment: "Компенсация"
    t.decimal  "payable",          precision: 16, scale: 2, comment: "К оплате"
    t.decimal  "payment",          precision: 16, scale: 2, comment: "Оплата"
    t.decimal  "outgoing_balance", precision: 16, scale: 2, comment: "Исходящее сальдо"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "yk_pro_saldo", ["account"], name: "index_yk_pro_saldo_on_account", using: :btree
  add_index "yk_pro_saldo", ["appartment"], name: "index_yk_pro_saldo_on_appartment", using: :btree
  add_index "yk_pro_saldo", ["benefit"], name: "index_yk_pro_saldo_on_benefit", using: :btree
  add_index "yk_pro_saldo", ["compensation"], name: "index_yk_pro_saldo_on_compensation", using: :btree
  add_index "yk_pro_saldo", ["earn"], name: "index_yk_pro_saldo_on_earn", using: :btree
  add_index "yk_pro_saldo", ["firstname"], name: "index_yk_pro_saldo_on_firstname", using: :btree
  add_index "yk_pro_saldo", ["house"], name: "index_yk_pro_saldo_on_house", using: :btree
  add_index "yk_pro_saldo", ["lastname"], name: "index_yk_pro_saldo_on_lastname", using: :btree
  add_index "yk_pro_saldo", ["middlename"], name: "index_yk_pro_saldo_on_middlename", using: :btree
  add_index "yk_pro_saldo", ["opening_balance"], name: "index_yk_pro_saldo_on_opening_balance", using: :btree
  add_index "yk_pro_saldo", ["outgoing_balance"], name: "index_yk_pro_saldo_on_outgoing_balance", using: :btree
  add_index "yk_pro_saldo", ["payable"], name: "index_yk_pro_saldo_on_payable", using: :btree
  add_index "yk_pro_saldo", ["payment"], name: "index_yk_pro_saldo_on_payment", using: :btree
  add_index "yk_pro_saldo", ["period"], name: "index_yk_pro_saldo_on_period", using: :btree
  add_index "yk_pro_saldo", ["recalculation"], name: "index_yk_pro_saldo_on_recalculation", using: :btree
  add_index "yk_pro_saldo", ["service"], name: "index_yk_pro_saldo_on_service", using: :btree
  add_index "yk_pro_saldo", ["street"], name: "index_yk_pro_saldo_on_street", using: :btree

  create_table "yk_zav_peni", force: true, comment: "YK_ZAV_PENI" do |t|
    t.integer  "account",                             comment: "№ л.сч"
    t.date     "period",                              comment: "Период"
    t.string   "service",                             comment: "Услуга"
    t.decimal  "percent",    precision: 16, scale: 4, comment: "Процент"
    t.decimal  "earn",       precision: 16, scale: 2, comment: "Начислено пени"
    t.decimal  "paid",       precision: 16, scale: 2, comment: "Оплачено пени"
    t.decimal  "debt",       precision: 16, scale: 2, comment: "Задолженность по пени"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "yk_zav_peni", ["account"], name: "index_yk_zav_peni_on_account", using: :btree
  add_index "yk_zav_peni", ["debt"], name: "index_yk_zav_peni_on_debt", using: :btree
  add_index "yk_zav_peni", ["earn"], name: "index_yk_zav_peni_on_earn", using: :btree
  add_index "yk_zav_peni", ["paid"], name: "index_yk_zav_peni_on_paid", using: :btree
  add_index "yk_zav_peni", ["percent"], name: "index_yk_zav_peni_on_percent", using: :btree
  add_index "yk_zav_peni", ["period"], name: "index_yk_zav_peni_on_period", using: :btree
  add_index "yk_zav_peni", ["service"], name: "index_yk_zav_peni_on_service", using: :btree

  create_table "yk_zav_saldo", force: true, comment: "YK Zav Saldo" do |t|
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

  add_index "yk_zav_saldo", ["account"], name: "index_yk_zav_saldo_on_account", using: :btree
  add_index "yk_zav_saldo", ["appartment"], name: "index_yk_zav_saldo_on_appartment", using: :btree
  add_index "yk_zav_saldo", ["benefit"], name: "index_yk_zav_saldo_on_benefit", using: :btree
  add_index "yk_zav_saldo", ["compensation"], name: "index_yk_zav_saldo_on_compensation", using: :btree
  add_index "yk_zav_saldo", ["earn"], name: "index_yk_zav_saldo_on_earn", using: :btree
  add_index "yk_zav_saldo", ["firstname"], name: "index_yk_zav_saldo_on_firstname", using: :btree
  add_index "yk_zav_saldo", ["house"], name: "index_yk_zav_saldo_on_house", using: :btree
  add_index "yk_zav_saldo", ["lastname"], name: "index_yk_zav_saldo_on_lastname", using: :btree
  add_index "yk_zav_saldo", ["middlename"], name: "index_yk_zav_saldo_on_middlename", using: :btree
  add_index "yk_zav_saldo", ["opening_balance"], name: "index_yk_zav_saldo_on_opening_balance", using: :btree
  add_index "yk_zav_saldo", ["outgoing_balance"], name: "index_yk_zav_saldo_on_outgoing_balance", using: :btree
  add_index "yk_zav_saldo", ["payable"], name: "index_yk_zav_saldo_on_payable", using: :btree
  add_index "yk_zav_saldo", ["payment"], name: "index_yk_zav_saldo_on_payment", using: :btree
  add_index "yk_zav_saldo", ["period"], name: "index_yk_zav_saldo_on_period", using: :btree
  add_index "yk_zav_saldo", ["recalculation"], name: "index_yk_zav_saldo_on_recalculation", using: :btree
  add_index "yk_zav_saldo", ["service"], name: "index_yk_zav_saldo_on_service", using: :btree
  add_index "yk_zav_saldo", ["street"], name: "index_yk_zav_saldo_on_street", using: :btree

  create_table "ykm_dolg_200909201306", force: true, comment: "(17)YKM_DOLG_2009_09_2013_06" do |t|
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

  add_index "ykm_dolg_200909201306", ["account"], name: "index_ykm_dolg_200909201306_on_account", using: :btree
  add_index "ykm_dolg_200909201306", ["appartment"], name: "index_ykm_dolg_200909201306_on_appartment", using: :btree
  add_index "ykm_dolg_200909201306", ["benefit"], name: "index_ykm_dolg_200909201306_on_benefit", using: :btree
  add_index "ykm_dolg_200909201306", ["compensation"], name: "index_ykm_dolg_200909201306_on_compensation", using: :btree
  add_index "ykm_dolg_200909201306", ["earn"], name: "index_ykm_dolg_200909201306_on_earn", using: :btree
  add_index "ykm_dolg_200909201306", ["firstname"], name: "index_ykm_dolg_200909201306_on_firstname", using: :btree
  add_index "ykm_dolg_200909201306", ["house"], name: "index_ykm_dolg_200909201306_on_house", using: :btree
  add_index "ykm_dolg_200909201306", ["lastname"], name: "index_ykm_dolg_200909201306_on_lastname", using: :btree
  add_index "ykm_dolg_200909201306", ["middlename"], name: "index_ykm_dolg_200909201306_on_middlename", using: :btree
  add_index "ykm_dolg_200909201306", ["opening_balance"], name: "index_ykm_dolg_200909201306_on_opening_balance", using: :btree
  add_index "ykm_dolg_200909201306", ["outgoing_balance"], name: "index_ykm_dolg_200909201306_on_outgoing_balance", using: :btree
  add_index "ykm_dolg_200909201306", ["payable"], name: "index_ykm_dolg_200909201306_on_payable", using: :btree
  add_index "ykm_dolg_200909201306", ["payment"], name: "index_ykm_dolg_200909201306_on_payment", using: :btree
  add_index "ykm_dolg_200909201306", ["period"], name: "index_ykm_dolg_200909201306_on_period", using: :btree
  add_index "ykm_dolg_200909201306", ["recalculation"], name: "index_ykm_dolg_200909201306_on_recalculation", using: :btree
  add_index "ykm_dolg_200909201306", ["service"], name: "index_ykm_dolg_200909201306_on_service", using: :btree
  add_index "ykm_dolg_200909201306", ["street"], name: "index_ykm_dolg_200909201306_on_street", using: :btree

  create_table "ykm_dolg_201307201406", force: true, comment: "(17)YKM_DOLG_2013_07_2014_06" do |t|
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

  add_index "ykm_dolg_201307201406", ["account"], name: "index_ykm_dolg_201307201406_on_account", using: :btree
  add_index "ykm_dolg_201307201406", ["appartment"], name: "index_ykm_dolg_201307201406_on_appartment", using: :btree
  add_index "ykm_dolg_201307201406", ["benefit"], name: "index_ykm_dolg_201307201406_on_benefit", using: :btree
  add_index "ykm_dolg_201307201406", ["compensation"], name: "index_ykm_dolg_201307201406_on_compensation", using: :btree
  add_index "ykm_dolg_201307201406", ["earn"], name: "index_ykm_dolg_201307201406_on_earn", using: :btree
  add_index "ykm_dolg_201307201406", ["firstname"], name: "index_ykm_dolg_201307201406_on_firstname", using: :btree
  add_index "ykm_dolg_201307201406", ["house"], name: "index_ykm_dolg_201307201406_on_house", using: :btree
  add_index "ykm_dolg_201307201406", ["lastname"], name: "index_ykm_dolg_201307201406_on_lastname", using: :btree
  add_index "ykm_dolg_201307201406", ["middlename"], name: "index_ykm_dolg_201307201406_on_middlename", using: :btree
  add_index "ykm_dolg_201307201406", ["opening_balance"], name: "index_ykm_dolg_201307201406_on_opening_balance", using: :btree
  add_index "ykm_dolg_201307201406", ["outgoing_balance"], name: "index_ykm_dolg_201307201406_on_outgoing_balance", using: :btree
  add_index "ykm_dolg_201307201406", ["payable"], name: "index_ykm_dolg_201307201406_on_payable", using: :btree
  add_index "ykm_dolg_201307201406", ["payment"], name: "index_ykm_dolg_201307201406_on_payment", using: :btree
  add_index "ykm_dolg_201307201406", ["period"], name: "index_ykm_dolg_201307201406_on_period", using: :btree
  add_index "ykm_dolg_201307201406", ["recalculation"], name: "index_ykm_dolg_201307201406_on_recalculation", using: :btree
  add_index "ykm_dolg_201307201406", ["service"], name: "index_ykm_dolg_201307201406_on_service", using: :btree
  add_index "ykm_dolg_201307201406", ["street"], name: "index_ykm_dolg_201307201406_on_street", using: :btree

  create_table "ykm_peni200909201306", force: true, comment: "(7)YKM_PENI_2009_09_2013_06" do |t|
    t.integer  "account",                            comment: "№ л.сч"
    t.date     "period",                             comment: "Период"
    t.string   "service",                            comment: "Услуга"
    t.decimal  "percent",    precision: 8, scale: 4, comment: "Процент"
    t.decimal  "earn",       precision: 8, scale: 2, comment: "Начислено пени"
    t.decimal  "paid",       precision: 8, scale: 2, comment: "Оплачено пени"
    t.decimal  "debt",       precision: 8, scale: 2, comment: "Задолженность по пени"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ykm_peni200909201306", ["account"], name: "index_ykm_peni200909201306_on_account", using: :btree
  add_index "ykm_peni200909201306", ["debt"], name: "index_ykm_peni200909201306_on_debt", using: :btree
  add_index "ykm_peni200909201306", ["earn"], name: "index_ykm_peni200909201306_on_earn", using: :btree
  add_index "ykm_peni200909201306", ["paid"], name: "index_ykm_peni200909201306_on_paid", using: :btree
  add_index "ykm_peni200909201306", ["percent"], name: "index_ykm_peni200909201306_on_percent", using: :btree
  add_index "ykm_peni200909201306", ["period"], name: "index_ykm_peni200909201306_on_period", using: :btree
  add_index "ykm_peni200909201306", ["service"], name: "index_ykm_peni200909201306_on_service", using: :btree

  create_table "ykm_peni201307201406", force: true, comment: "(7)YKM_PENI_2013_07_2014_06" do |t|
    t.integer  "account",                            comment: "№ л.сч"
    t.date     "period",                             comment: "Период"
    t.string   "service",                            comment: "Услуга"
    t.decimal  "percent",    precision: 8, scale: 4, comment: "Процент"
    t.decimal  "earn",       precision: 8, scale: 2, comment: "Начислено пени"
    t.decimal  "paid",       precision: 8, scale: 2, comment: "Оплачено пени"
    t.decimal  "debt",       precision: 8, scale: 2, comment: "Задолженность по пени"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ykm_peni201307201406", ["account"], name: "index_ykm_peni201307201406_on_account", using: :btree
  add_index "ykm_peni201307201406", ["debt"], name: "index_ykm_peni201307201406_on_debt", using: :btree
  add_index "ykm_peni201307201406", ["earn"], name: "index_ykm_peni201307201406_on_earn", using: :btree
  add_index "ykm_peni201307201406", ["paid"], name: "index_ykm_peni201307201406_on_paid", using: :btree
  add_index "ykm_peni201307201406", ["percent"], name: "index_ykm_peni201307201406_on_percent", using: :btree
  add_index "ykm_peni201307201406", ["period"], name: "index_ykm_peni201307201406_on_period", using: :btree
  add_index "ykm_peni201307201406", ["service"], name: "index_ykm_peni201307201406_on_service", using: :btree

end
