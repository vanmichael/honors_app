class AddQ6ComToFacultyrecs < ActiveRecord::Migration
  def change
  	add_column :facultyrecs, :q7_com, :text
  end
end
