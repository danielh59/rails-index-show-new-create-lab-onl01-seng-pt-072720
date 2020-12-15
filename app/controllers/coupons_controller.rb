class CouponsController < ApplicationController
  def show
  @coupon = Author.find(params[:id])
end

def new
  @coupon = Author.new
end

def create
     @coupon = Author.new(author_params)

  if @coupon.valid?
     @coupon.save

     redirect_to author_path(@coupon)
   else
     render :new
  end
end
end
