class ChangeFacultyRecTable < ActiveRecord::Migration
  def change
  	change_column :facultyrecs, :courses, :text, :limit => nil
  end
end
