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

ActiveRecord::Schema.define(:version => 20130222173539) do

  create_table "apps", :force => true do |t|
    t.integer "user_id"
    t.integer "facultyrec_id"
    t.string  "applicant_name"
    t.integer "year_of_grad"
    t.integer "boxnumber"
    t.string  "facultyreference"
    t.text    "q1"
    t.text    "q2"
    t.text    "q3"
    t.text    "q4"
    t.string  "agree"
    t.string  "essay"
    t.string  "transcript"
    t.string  "faculty_email"
    t.string  "faculty_rec_status"
    t.string  "committee_eval_status"
    t.string  "status"
  end

  create_table "committee_member_evaluations", :force => true do |t|
    t.integer  "app_id"
    t.string   "name"
    t.string   "applicant_name"
    t.integer  "q1"
    t.text     "q1_com"
    t.integer  "q2"
    t.integer  "q3"
    t.text     "q2_q3_com"
    t.string   "q4"
    t.text     "q5_com"
    t.text     "q6_com"
    t.integer  "q7"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_id"
    t.string   "status"
  end

  create_table "facultyrecs", :force => true do |t|
    t.string   "user_id"
    t.string   "faculty_name"
    t.integer  "app_id"
    t.string   "applicant_name"
    t.string   "title"
    t.text     "courses"
    t.string   "q1"
    t.text     "q1_com"
    t.string   "q2"
    t.text     "q2_com"
    t.string   "q3"
    t.text     "q3_com"
    t.string   "q4"
    t.text     "q4_com"
    t.text     "q5_com"
    t.text     "q6_com"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "status"
    t.text     "q7_com"
  end

  create_table "interviews", :force => true do |t|
    t.string "name1"
    t.string "name2"
    t.string "name3"
    t.string "name4"
    t.string "name5"
    t.string "name6"
    t.string "name7"
    t.string "name8"
    t.string "name9"
    t.string "name10"
    t.string "name11"
    t.string "name12"
    t.string "name13"
    t.string "name14"
    t.string "name15"
    t.string "name16"
    t.string "name17"
    t.string "name18"
    t.string "name19"
    t.string "name20"
    t.string "name21"
    t.string "name22"
    t.string "name23"
    t.string "name24"
    t.string "name25"
    t.string "name26"
    t.string "name27"
    t.string "name28"
    t.string "name29"
    t.string "name30"
    t.string "name31"
    t.string "name32"
    t.string "name33"
    t.string "name34"
    t.string "name35"
    t.string "name36"
    t.string "name37"
    t.string "name38"
    t.string "name39"
    t.string "name40"
    t.string "name41"
    t.string "name42"
    t.string "name43"
    t.string "name44"
    t.string "name45"
    t.string "name46"
    t.string "name47"
    t.string "name48"
    t.string "name49"
    t.string "name50"
    t.string "name51"
    t.string "name52"
    t.string "name53"
    t.string "name54"
    t.string "name55"
    t.string "name56"
    t.string "name57"
    t.string "name58"
    t.string "name59"
    t.string "name60"
    t.string "name61"
    t.string "name62"
    t.string "name63"
    t.string "name64"
    t.string "name65"
    t.string "name66"
    t.string "name67"
    t.string "name68"
    t.string "name69"
    t.string "name70"
    t.string "name71"
    t.string "name72"
    t.string "name73"
    t.string "name74"
    t.string "name75"
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_type"
    t.string   "avatar"
    t.string   "cellphone"
  end

end
