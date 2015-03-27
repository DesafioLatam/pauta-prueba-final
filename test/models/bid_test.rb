require 'test_helper'

class BidTest < ActiveSupport::TestCase
  def setup
    @bid = bids(:one)
  end


  test "cannot bid after product expiration " do
  end

  test "same user cannot bid two consecutive times" do
  end

  test "same user can bid if another user bid after him" do
  end

end
