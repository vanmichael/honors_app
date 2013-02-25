class CreateInterviewEvaluationTable < ActiveRecord::Migration
  def change
  	create_table "interview_evaluations", :force => true do |t|
    t.integer  "app_id"
    t.string   "name"
    t.string   "applicant_name"
    t.integer  "q1"
    t.string   "q1_com"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_id"
  	end
  end
end
