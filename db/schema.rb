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

ActiveRecord::Schema.define(:version => 20130520171628) do

  create_table "ci", :force => true do |t|
    t.string "name"
  end

  create_table "cis", :force => true do |t|
    t.text     "name"
    t.text     "phone_number"
    t.text     "email_address"
    t.text     "fax"
    t.integer  "project_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "contact_info", :force => true do |t|
    t.string "name"
  end

  create_table "contact_information", :force => true do |t|
    t.string "name"
  end

  create_table "fcontact_info", :force => true do |t|
    t.string "name"
  end

  create_table "fname", :force => true do |t|
    t.string "phone_number"
    t.string "email_address"
    t.string "fax"
  end

  create_table "fstatus", :force => true do |t|
    t.string "current_status"
  end

  create_table "fwork_type", :force => true do |t|
    t.text "type_of_current_work"
  end

  create_table "n", :force => true do |t|
    t.string "phone_number"
    t.string "email_address"
    t.string "fax"
  end

  create_table "name", :force => true do |t|
    t.string "phone_number"
    t.string "email_address"
    t.string "fax"
  end

  create_table "named", :force => true do |t|
    t.string "phone_number"
    t.string "email_address"
    t.string "fax"
  end

  create_table "projects", :force => true do |t|
    t.string   "project_name"
    t.string   "client"
    t.string   "price"
    t.text     "description"
    t.string   "responsible_user"
    t.text     "notes"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.datetime "last_updated"
    t.datetime "updated_on"
    t.integer  "status"
    t.integer  "work_type"
    t.integer  "attachment"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
  end

  create_table "st", :force => true do |t|
    t.string "current_status"
  end

  create_table "statu", :force => true do |t|
    t.string "current_status"
  end

  create_table "status", :force => true do |t|
    t.string "current_status"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "work_typ", :force => true do |t|
    t.text "type_of_current_work"
  end

  create_table "work_type", :force => true do |t|
    t.text "type_of_current_work"
  end

  create_table "wt", :force => true do |t|
    t.text "type_of_current_work"
  end

end
