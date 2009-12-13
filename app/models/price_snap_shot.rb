# == Schema Information
#
# Table name: price_snap_shots
#
#  id         :integer(4)      not null, primary key
#  price      :integer(10)
#  product_id :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

class PriceSnapShot < ActiveRecord::Base
  belongs_to :product
end
