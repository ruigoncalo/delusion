class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :sid
      t.integer :signature
      t.datetime :timestamp

      t.timestamps
    end
  end
end
