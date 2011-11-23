class CreateAcidagalerts < ActiveRecord::Migration
  def change
    create_table :acidagalerts do |t|
      t.integer :agid
      t.integer :agsid
      t.integer :agcid

      t.timestamps
    end
  end
end
