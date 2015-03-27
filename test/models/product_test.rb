require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = products(:one)
  end

  test "should have name" do
    @product.name = nil
    assert !@product.valid?, "product name cannot be nil"
  end

  test "should have bids" do
    assert_equal @product.bids, [bids(:two), bids(:one)]
  end

 
end
