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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
