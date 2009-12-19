class AddSoldOutToPriceSnapShots < ActiveRecord::Migration
  def self.up
    add_column :price_snap_shots, :sold_out, :boolean
  end

  def self.down
    remove_column :price_snap_shots, :sold_out
  end
end
