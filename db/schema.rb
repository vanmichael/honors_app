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

ActiveRecord::Schema.define(:version => 20130125064141) do

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
