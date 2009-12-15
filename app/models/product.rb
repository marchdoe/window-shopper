# == Schema Information
#
# Table name: products
#
#  id          :integer(4)      not null, primary key
#  category_id :integer(4)
#  name        :string(255)
#  price       :integer(10)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  custom_url  :string(255)
#  url         :string(255)
#

class Product < ActiveRecord::Base
  has_and_belongs_to_many :users
  belongs_to :category
  
  has_many :price_snap_shots
end
