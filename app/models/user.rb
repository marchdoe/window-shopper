class User < ActiveRecord::Base
  validates_presence_of :email
  acts_as_authentic
end