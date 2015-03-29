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
    products_bids = @product.bids.to_a.sort_by(&:id)
    fixtures_bids = [bids(:one), bids(:two), bids(:three)].sort_by(&:id)
    assert_equal products_bids, fixtures_bids
  end
  
end
