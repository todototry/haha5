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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111003122647) do

  create_table "breeds", :force => true do |t|
    t.integer  "com_id"
    t.string   "code"
    t.string   "name"
    t.string   "series"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "coms", :force => true do |t|
    t.string   "comname"
    t.string   "bossname"
    t.string   "tel"
    t.string   "fax"
    t.string   "www"
    t.string   "email"
    t.string   "qq"
    t.string   "identity"
    t.string   "addr"
    t.integer  "user_id"
    t.binary   "headimg"
    t.string   "rules"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diseasedescs", :force => true do |t|
    t.integer  "com_id"
    t.string   "diseasename"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diseases", :force => true do |t|
    t.integer  "com_id"
    t.integer  "piginfo_id"
    t.integer  "diseasedesc_id"
    t.date     "time"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "matings", :force => true do |t|
    t.integer  "com_id"
    t.string   "momid"
    t.string   "dadid"
    t.date     "time"
    t.string   "state"
    t.integer  "sum"
    t.integer  "daughternum"
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "piginfos", :force => true do |t|
    t.string   "pigid"
    t.integer  "breed_id"
    t.string   "earid"
    t.string   "sex"
    t.date     "birthday"
    t.integer  "birthorder"
    t.integer  "brothersnum"
    t.integer  "left"
    t.integer  "right"
    t.float    "weight"
    t.string   "state"
    t.string   "momid"
    t.string   "dadid"
    t.integer  "com_id"
    t.integer  "grouporder"
    t.integer  "mating_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "level"
    t.string   "ip"
    t.date     "starttime"
    t.date     "deadline"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vaccines", :force => true do |t|
    t.integer  "com_id"
    t.string   "name"
    t.date     "time"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
