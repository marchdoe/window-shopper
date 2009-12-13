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

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  def test_truth
    assert true
  end
end
