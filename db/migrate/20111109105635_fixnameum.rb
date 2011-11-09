class Fixnameum < ActiveRecord::Migration
  def up
	rename_column :searches, :attributes, :atributos
  end

  def down
  
  end
end
