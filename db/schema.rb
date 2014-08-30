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

ActiveRecord::Schema.define(version: 20140830060250) do

  create_table "cafes", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.time     "mon_open"
    t.time     "mon_close"
    t.time     "tue_open"
    t.time     "tue_close"
    t.time     "wed_open"
    t.time     "wed_close"
    t.time     "thu_open"
    t.time     "thu_close"
    t.time     "fri_open"
    t.time     "fri_close"
    t.time     "sat_open"
    t.time     "sat_close"
    t.time     "sun_open"
    t.time     "sun_close"
    t.boolean  "mon_holiday"
    t.boolean  "tue_holiday"
    t.boolean  "wed_holiday"
    t.boolean  "thu_holiday"
    t.boolean  "fri_holiday"
    t.boolean  "sat_holiday"
    t.boolean  "sun_holiday"
  end

end
