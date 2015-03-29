require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = products(:one)
  end

  test "should have name" do
    @product.name = nil
    assert !@product.valid?, "product name cannot be nil"
  end

  test "should have price" do
    @product.price = nil
    assert !@product.valid?, "product price cannot be nil"
  end

  test "should have photo" do
    @product.photo = nil
    assert !@product.valid?, "product photo cannot be nil"
  end

  test "should have bids" do
    products_bids = @product.bids.to_a.sort_by(&:id)
    fixtures_bids = [bids(:one), bids(:two), bids(:three)].sort_by(&:id)
    assert_equal products_bids, fixtures_bids
  end
  
end
