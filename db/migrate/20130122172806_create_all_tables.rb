class CreateAllTables < ActiveRecord::Migration
  def change
  	create_table "apps", :force => true do |t|
    t.integer "user_id"
    t.integer "facultyrec_id"
    t.string  "applicant_name"
    t.integer "year_of_grad"
    t.integer "boxnumber"
    t.string  "facultyreference"
    t.string  "q1"
    t.string  "q2"
    t.string  "q3"
    t.string  "q4"
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
    t.string   "q1_com"
    t.integer  "q2"
    t.integer  "q3"
    t.string   "q2_q3_com"
    t.string   "q4"
    t.string   "q5_com"
    t.string   "q6_com"
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
    t.string   "courses"
    t.string   "q1"
    t.string   "q1_com"
    t.string   "q2"
    t.string   "q2_com"
    t.string   "q3"
    t.string   "q3_com"
    t.string   "q4"
    t.string   "q4_com"
    t.string   "q5_com"
    t.string   "q6_com"
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
end
