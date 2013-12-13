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

ActiveRecord::Schema.define(:version => 20131206102304) do

  create_table "cars", :force => true do |t|
    t.string   "make"
    t.string   "model"
    t.date     "age"
    t.string   "color"
    t.string   "version"
    t.integer  "garage_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "photo"
    t.string   "Reg"
    t.float    "price"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.date     "age"
    t.string   "insurance_type"
    t.boolean  "full_licance"
    t.integer  "phone"
    t.string   "address"
    t.string   "PPSN"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
    t.string   "password_digest"
  end

  create_table "employees", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.integer  "phone"
    t.string   "experience"
    t.integer  "garage_id"
    t.string   "role"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
    t.string   "password_digest"
  end

  create_table "garages", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.boolean  "full"
    t.integer  "phone"
    t.string   "manageName"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rentals", :force => true do |t|
    t.date     "startDate"
    t.date     "endDate"
    t.float    "cost"
    t.float    "paid"
    t.integer  "car_id"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "paymentDue"
  end

end
