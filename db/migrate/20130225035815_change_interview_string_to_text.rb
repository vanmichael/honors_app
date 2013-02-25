class ChangeInterviewStringToText < ActiveRecord::Migration
  def change
  	change_column :interview_evaluations, :q1_com, :text, :limit => nil
  end
end
