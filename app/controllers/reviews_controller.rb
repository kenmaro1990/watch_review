class ReviewsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @review = Review.new  
    @review.review_images.build
    @brands = Brand.all
  end

  def create
    @review = Review.new(review_params)
    @review.save!

    if @review.save
      params[:review_images][:image].each do |image|
        @review.review_images.create(image: image, review_id: @review.id)
      end    
      redirect_to root_path
    else
      render action: "new"
    end  
  end

  def show
    @review = Review.find(params[:id])
    @images = @review.review_images
    @image = @images.first
  end

  def detail
  end
end

private

def review_params
  params.require(:review).permit(
    :title,
    :brand_id,
    review_images_attributes: [:id, :image, :description]
  ).merge(
    user_id: current_user.id,
  )
end
  