class CouponsController < ApplicationController
  def show
  @coupon = Coupon.find(params[:id])
end

def new
  @coupon = Coupon.new
end

def create
     @coupon = Coupon.new(author_params)

  if @coupon.valid?
     @coupon.save

     redirect_to coupon_path(@coupon)
   else
     render :new
  end
end
end
