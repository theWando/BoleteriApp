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

ActiveRecord::Schema.define(:version => 20130322141001) do

  create_table "contact_forms", :force => true do |t|
    t.string   "type"
    t.string   "name"
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "hotels", :force => true do |t|
    t.string   "name"
    t.string   "country"
    t.string   "city"
    t.integer  "number_of_rooms_single"
    t.integer  "number_of_rooms_doubles"
    t.integer  "number_of_rooms_married"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "passengers", :force => true do |t|
    t.string   "document_type"
    t.string   "document"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "tickets", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "travels", :force => true do |t|
    t.string   "destination_city"
    t.string   "destination_country"
    t.integer  "n_days"
    t.integer  "n_nights"
    t.text     "extract"
    t.text     "detail"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.string   "password"
    t.date     "birth_date"
    t.string   "user_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
