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

ActiveRecord::Schema.define(:version => 20140109053130) do

  create_table "beers", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "batch_yield"
    t.string   "regional_style"
    t.string   "beer_style"
    t.string   "color"
    t.integer  "original_gravity"
    t.integer  "final_gravity"
    t.integer  "time_to_make"
    t.string   "image_url"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "production_notes", :force => true do |t|
    t.integer  "beer_id"
    t.date     "brew_date"
    t.date     "secondary_date"
    t.date     "bottling_date"
    t.text     "notes"
    t.string   "image_url"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "reviews", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "tasting_date"
    t.integer  "production_note_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

end
