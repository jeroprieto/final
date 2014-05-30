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

ActiveRecord::Schema.define(version: 20140528215425) do

  create_table "locations", force: true do |t|
    t.string "title"
    t.string "accomodation"
    t.string "nearest_airport"
    t.string "photomap_id"
  end

  create_table "months", force: true do |t|
    t.string "title"
  end

  create_table "operators", force: true do |t|
    t.string "title"
    t.string "owner"
    t.string "contact_url"
  end

  create_table "seasons", force: true do |t|
    t.integer "trip_id"
    t.integer "month_id"
  end

  create_table "trips", force: true do |t|
    t.string  "title"
    t.integer "location_id"
    t.text    "description"
    t.integer "operator_id"
    t.integer "probability"
    t.string  "photo_url"
  end

end
