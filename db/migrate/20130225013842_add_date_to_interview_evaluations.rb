class AddDateToInterviewEvaluations < ActiveRecord::Migration
  def change
  	add_column :interview_evaluations, :date, :date
  end
end
