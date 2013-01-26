class ChangeQ5Com < ActiveRecord::Migration
  def change
  	rename_column :committee_member_evaluations, :q5_com, :q5
  end
end
