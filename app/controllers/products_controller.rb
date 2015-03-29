class ProductsController < ApplicationController
  def index
    @products = Product.includes(:bids)
  end

  def winners
    # This could be improved filtering expired products
    @products = Product.includes(:bids)
  end

end
