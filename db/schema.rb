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

ActiveRecord::Schema.define(:version => 20120113071844) do

  create_table "campaign_members", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "event_members", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friend_requests", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendships", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invitations", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_blocked_users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_fans", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "settings", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "pic_small"
    t.string   "pic_big"
    t.string   "pic_square"
    t.string   "pic"
    t.string   "timezone"
    t.string   "religion"
    t.string   "birthday"
    t.string   "birthday_date"
    t.string   "sex"
    t.string   "blood_type"
    t.string   "hometown_location"
    t.string   "current_location"
    t.string   "activities"
    t.string   "quotes"
    t.string   "about_me"
    t.string   "music"
    t.string   "book"
    t.string   "movie"
    t.string   "sport"
    t.string   "status"
    t.string   "locale"
    t.string   "profie_url"
    t.string   "verified"
    t.string   "website"
    t.string   "is_blocked"
    t.string   "contact_email"
    t.string   "email"
    t.string   "name_format"
    t.string   "languages"
    t.integer  "friend_count"
    t.string   "salt"
    t.string   "encrypted_password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
