class ChangeDateToString < ActiveRecord::Migration
  def change
  	change_column :interview_evaluations, :date, :string
  end
end
