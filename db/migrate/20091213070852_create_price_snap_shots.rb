class CreatePriceSnapShots < ActiveRecord::Migration
  def self.up
    create_table :price_snap_shots do |t|
      t.decimal :price
      t.integer :product_id

      t.timestamps
    end
  end

  def self.down
    drop_table :price_snap_shots
  end
end
