class ReviewsController < ApplicationController

  def index
    @reviews = @restaurant.reviews
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    # can be also @restaurant = params[:id]
    @review.restaurant = @restaurant
    # and this line must be @review.restaurant_id = params[:id]
        if @review.save
      redirect_to banana_path(@restaurant)
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
