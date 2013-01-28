class AddStatusToAllFormTables < ActiveRecord::Migration
  def change
  	add_column :apps, :status, :string
  	add_column :committee_member_evaluations, :status, :string
  	add_column :facultyrecs, :status, :string
  end
end
