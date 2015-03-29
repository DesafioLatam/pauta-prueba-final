require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:two)
  end

  test "user should have bids" do
    @user_bids = @user.bids.sort_by(&:id)
    @bids = [bids(:one), bids(:three), bids(:four)].sort_by(&:id)
    assert_equal @user_bids, @bids
  end

  test "user should have products through bids" do
    assert_equal @user.products.to_a.uniq, [products(:one), products(:two)]
  end

end
