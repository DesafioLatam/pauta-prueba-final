class Product < ActiveRecord::Base
  validates_presence_of :name
  has_many :bids

end
