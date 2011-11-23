class CreateSignatures < ActiveRecord::Migration
  def change
    create_table :signatures do |t|
      t.string :signame
      t.integer :sigclassid
      t.integer :sigpriority
      t.integer :sigrev
      t.integer :sigsid

      t.timestamps
    end
  end
end
