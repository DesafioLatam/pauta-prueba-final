require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:two)
  end

  test "user should have bids" do
    assert_equal @user.bids.to_a, [bids(:three), bids(:one)]
  end

  test "user should have products through bids" do
  end

end
