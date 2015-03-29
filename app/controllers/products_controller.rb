class ProductsController < ApplicationController
  def index
    @products = Product.includes(:bids)
  end
end
