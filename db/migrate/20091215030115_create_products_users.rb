class CreateProductsUsers < ActiveRecord::Migration
  def self.up
    create_table :products_users, :id => false do |t|
      t.integer :user_id, :product_id
    end
  end

  def self.down
    drop_table :products_users
  end
end
