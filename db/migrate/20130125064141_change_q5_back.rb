class ChangeQ5Back < ActiveRecord::Migration
  def change
  	rename_column :committee_member_evaluations, :q5, :q5_com
 
  end
end
