class BidsController < ApplicationController
  def create
    @product = Product.find(params[:product_id])
    @bid = Bid.new(product: @product, user: current_user)
    @bid.save
    
    respond_to do |f|
      f.html
      f.js
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.

  # Never trust parameters from the scary internet, only allow the white list through.
  def bids_params
    params.require(:bid).permit(:name)
  end


end
