class Product < ActiveRecord::Base
  validates_presence_of :name
  has_many :bids

  def expiration_time
    self.created_at + 2.hours + self.bids.count * 2.minutes
  end

  def expired?
    return Time.now >= self.expiration_time
  end

end
