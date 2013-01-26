class ChangeQ5Type < ActiveRecord::Migration
  def up
  	change_column :committee_member_evaluations, :q5, :text
  end
end
