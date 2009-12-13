class Product < ActiveRecord::Base
  belongs_to :category
  
  has_many :price_snap_shots
end
