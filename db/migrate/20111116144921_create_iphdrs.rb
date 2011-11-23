class CreateIphdrs < ActiveRecord::Migration
  def change
    create_table :iphdrs do |t|
      t.integer :sid
      t.integer :cid
      t.integer :ipsrc
      t.integer :ipdst
      t.integer :ipver
      t.integer :iphlen
      t.integer :iptos
      t.integer :iplen
      t.integer :ipid
      t.integer :ipflags
      t.integer :ipoff
      t.integer :ipttl
      t.integer :ipproto
      t.integer :ipcsum

      t.timestamps
    end
  end
end
