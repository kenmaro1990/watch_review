class BrandsController < ApplicationController
  def index
  end

  def show
    @brand = Brand.find(params[:id])
    @reviews = Review.where(brand_id: params[:id]).order("id DESC")
  end
end
