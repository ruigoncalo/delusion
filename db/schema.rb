# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111116145123) do

  create_table "acidagalerts", :force => true do |t|
    t.integer  "agid"
    t.integer  "agsid"
    t.integer  "agcid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "acidags", :force => true do |t|
    t.string   "agname"
    t.string   "agdesc"
    t.datetime "agctime"
    t.datetime "agltime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", :force => true do |t|
    t.integer  "sid"
    t.integer  "signature"
    t.datetime "timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intrusions", :force => true do |t|
    t.string   "ips"
    t.integer  "ports"
    t.string   "ipd"
    t.integer  "portd"
    t.string   "protocol"
    t.integer  "alert"
    t.datetime "itime"
    t.datetime "ftime"
    t.string   "local"
    t.string   "cmd"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iphdrs", :force => true do |t|
    t.integer  "sid"
    t.integer  "cid"
    t.integer  "ipsrc"
    t.integer  "ipdst"
    t.integer  "ipver"
    t.integer  "iphlen"
    t.integer  "iptos"
    t.integer  "iplen"
    t.integer  "ipid"
    t.integer  "ipflags"
    t.integer  "ipoff"
    t.integer  "ipttl"
    t.integer  "ipproto"
    t.integer  "ipcsum"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", :force => true do |t|
    t.string   "tipo"
    t.datetime "date"
    t.string   "atributos"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sensors", :force => true do |t|
    t.string   "hostname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sigclasses", :force => true do |t|
    t.string   "sigclassname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "signatures", :force => true do |t|
    t.string   "signame"
    t.integer  "sigclassid"
    t.integer  "sigpriority"
    t.integer  "sigrev"
    t.integer  "sigsid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",    :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "root",                                  :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
