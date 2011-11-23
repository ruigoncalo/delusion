class CreateAcidags < ActiveRecord::Migration
  def change
    create_table :acidags do |t|
      t.string :agname
      t.string :agdesc
      t.datetime :agctime
      t.datetime :agltime

      t.timestamps
    end
  end
end
