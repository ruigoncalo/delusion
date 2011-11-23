class CreateSigclasses < ActiveRecord::Migration
  def change
    create_table :sigclasses do |t|
      t.string :sigclassname

      t.timestamps
    end
  end
end
