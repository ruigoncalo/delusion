class CreateSensors < ActiveRecord::Migration
  def change
    create_table :sensors do |t|
      t.string :hostname

      t.timestamps
    end
  end
end
