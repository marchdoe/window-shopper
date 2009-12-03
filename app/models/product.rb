# == Schema Information
#
# Table name: products
#
#  id         :integer(4)      not null, primary key
#  price      :integer(4)
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Product < ActiveRecord::Base
  belongs_to :user
end
