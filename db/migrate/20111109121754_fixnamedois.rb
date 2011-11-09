class Fixnamedois < ActiveRecord::Migration
  def up
    rename_column :searches, :type, :tipo
  end

  def down
  end
end
