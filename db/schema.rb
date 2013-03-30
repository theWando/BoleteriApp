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

ActiveRecord::Schema.define(:version => 20130329192850) do

  create_table "assets", :force => true do |t|
    t.string   "name"
    t.integer  "hotel_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "assets", ["hotel_id"], :name => "index_assets_on_hotel_id"

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

  create_table "quota", :force => true do |t|
    t.integer  "hotel_id"
    t.integer  "travel_id"
    t.integer  "aviable_tickets"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "quota", ["hotel_id"], :name => "index_quota_on_hotel_id"
  add_index "quota", ["travel_id"], :name => "index_quota_on_travel_id"

  create_table "tickets", :force => true do |t|
    t.datetime "bought_on"
    t.string   "status"
    t.string   "paid_with"
    t.decimal  "amount_paid", :precision => 6, :scale => 2
    t.integer  "user_id"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  add_index "tickets", ["user_id"], :name => "index_tickets_on_user_id"

  create_table "travels", :force => true do |t|
    t.string   "destination_city"
    t.string   "destination_country"
    t.integer  "n_days"
    t.integer  "n_nights"
    t.text     "extract"
    t.text     "detail"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "number_of_seats_aviables"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "name"
    t.string   "lastname"
    t.string   "user_type"
    t.datetime "birth_date"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
