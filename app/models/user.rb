# == Schema Information
#
# Table name: users
#
#  id         :integer(4)      not null, primary key
#  username   :string(255)
#  email      :string(255)
#  password   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  validates_presence_of :email
  acts_as_authentic
  
  has_many :products
end
