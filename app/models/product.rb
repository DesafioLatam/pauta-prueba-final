class Product < ActiveRecord::Base
  validates_presence_of :name
  has_many :bids

  def expiration_time
    self.created_at + 2.hours + self.bids.count * 2. mins
  end

end
