# == Schema Information
#
# Table name: pages
#
#  id         :integer(4)      not null, primary key
#  title      :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Page < ActiveRecord::Base
end
