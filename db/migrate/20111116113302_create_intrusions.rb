class CreateIntrusions < ActiveRecord::Migration
  def change
    create_table :intrusions do |t|
      t.string :ips
      t.integer :ports
      t.string :ipd
      t.integer :portd
      t.string :protocol
      t.integer :alert
      t.datetime :itime
      t.datetime :ftime
      t.string :local
      t.string :cmd

      t.timestamps
    end
  end
end
