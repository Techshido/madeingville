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

ActiveRecord::Schema.define(:version => 20120324211905) do

  create_table "achievements", :force => true do |t|
    t.integer  "hacker_id"
    t.string   "category"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "achievements", ["category"], :name => "index_achievements_on_type"
  add_index "achievements", ["hacker_id"], :name => "index_achievements_on_hacker_id"

  create_table "compensations", :force => true do |t|
    t.integer  "hacker_id"
    t.string   "method"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "compensations", ["hacker_id"], :name => "index_compensations_on_hacker_id"

  create_table "projects", :force => true do |t|
    t.integer  "biz_monkey_id"
    t.text     "description"
    t.string   "website"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "name"
  end

  add_index "projects", ["biz_monkey_id"], :name => "index_projects_on_biz_monkey_id"

  create_table "technologies", :force => true do |t|
    t.integer  "user_id"
    t.string   "skill"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "technologies", ["skill"], :name => "index_technologies_on_type"
  add_index "technologies", ["user_id"], :name => "index_technologies_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",       :null => false
    t.string   "first_name",             :default => "",       :null => false
    t.string   "last_name",              :default => "",       :null => false
    t.string   "role",                   :default => "hacker", :null => false
    t.string   "encrypted_password",     :default => "",       :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.integer  "hacker_score",           :default => 0
    t.boolean  "contact_me"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
