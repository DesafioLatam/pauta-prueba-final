require 'test_helper'

class BidTest < ActiveSupport::TestCase
  # def setup
  # end

  test "can create a valid bid when product and user are present" do
    @bid = Bid.new(product: products(:one), user:users(:three))
    assert @bid.valid?, @bid.errors.messages
  end


  test "cannot bid after product expiration " do
    @bid = Bid.new(product: products(:one), user:users(:three), created_at: Time.now + 3.hours)
    assert |@bid.valid?, "cannot bid after expiration: #{@bid.errors.messages}"
  end

  test "same user cannot bid two consecutive times" do
    @bid = Bid.create(user: users(:three), product: products(:one))
    @bid2 = Bid.create(user: users(:three), product: products(:one))
    assert !@bid2.valid?, "same user cannot bid two consecutive times"
  end

  test "same user can bid if another user bid after him" do
    @bid = Bid.create(user: users(:three), product: products(:one))
    @bid2 = Bid.create(user: users(:two), product: products(:one))
    @bid3 = Bid.new(user: users(:three), product: products(:one))
    assert @bid3.valid?, "user can bid if another user bid after him but: #{@bid.errors.messages} #{@bid2.errors.messages} #{@bid3.errors.messages}"
  end

end
