# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20091219183106) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "price_snap_shots", :force => true do |t|
    t.integer  "price",      :limit => 10, :precision => 10, :scale => 0
    t.integer  "product_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "sold_out"
  end

  create_table "products", :force => true do |t|
    t.integer  "category_id"
    t.string   "name"
    t.integer  "price",       :limit => 10, :precision => 10, :scale => 0
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "custom_url"
    t.string   "url"
  end

  create_table "products_users", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "product_id"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
