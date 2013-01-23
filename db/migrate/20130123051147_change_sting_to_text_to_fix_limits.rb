class ChangeStingToTextToFixLimits < ActiveRecord::Migration
  def change
  	change_column :apps, :q1, :text, :limit => nil
  	change_column :apps, :q2, :text, :limit => nil
  	change_column :apps, :q3, :text, :limit => nil
  	change_column :apps, :q4, :text, :limit => nil

  	change_column :committee_member_evaluations, :q1_com, :text, :limit => nil
  	change_column :committee_member_evaluations, :q2_q3_com, :text, :limit => nil
  	change_column :committee_member_evaluations, :q5_com, :text, :limit => nil
  	change_column :committee_member_evaluations, :q6_com, :text, :limit => nil

  	change_column :facultyrecs, :q1_com, :text, :limit => nil
  	change_column :facultyrecs, :q2_com, :text, :limit => nil
  	change_column :facultyrecs, :q3_com, :text, :limit => nil
  	change_column :facultyrecs, :q4_com, :text, :limit => nil
  	change_column :facultyrecs, :q5_com, :text, :limit => nil
  	change_column :facultyrecs, :q6_com, :text, :limit => nil
  end
end
