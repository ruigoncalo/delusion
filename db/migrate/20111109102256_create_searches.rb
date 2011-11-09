class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :type
      t.datetime :date
      t.string :attributes
      t.integer :user_id

      t.timestamps
    end
  end
end
