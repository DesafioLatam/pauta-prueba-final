class Product < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :photo
  validates_presence_of :price
  has_many :bids, :dependent => :destroy

  def expiration_time
    self.created_at + 2.hours + self.bids.count * 2.minutes
  end

  def expired?
    return Time.now >= self.expiration_time
  end

  def current_price
    self.price + self.bids.count 
  end

end
