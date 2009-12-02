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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert User.new.valid?
  end
end
