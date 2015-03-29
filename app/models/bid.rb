class Bid < ActiveRecord::Base  
  belongs_to :user
  belongs_to :product
  validates_presence_of :user
  validates_presence_of :product 
  validate :consecutive, on: :create
  validate :product_expired, on: :create

  def consecutive
    return if self.product.nil?
    return if self.product.bids.empty?

    if self.user_id == self.product.bids.last.user_id
      errors.add(:consecutive, "cannot bid twice in consecutive") 
    end
  end

  def product_expired
    return if self.product.nil?
    self.created_at ||= Time.now #fix for time before save
    if self.created_at >= self.product.expiration_time 
      errors.add(:expired, "cannot bid if product is expired") 
    end
  end

end
