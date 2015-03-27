require 'test_helper'

class BidTest < ActiveSupport::TestCase
  def setup
    @bid = bids(:one)
  end


  test "cannot bid after product expiration " do
  end

  test "same user cannot bid two consecutive times" do
    @bid = Bid.create(user: users(:one), product: products(:one))
    @bid2 = Bid.create(user: users(:one), product: products(:one))
    assert !@bid2.valid?, "same user cannot bid two consecutive times"
  end

  test "same user can bid if another user bid after him" do
  end

end
