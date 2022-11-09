class ReviewsController < ApplicationController

  def index
    @reviews = @restaurant.reviews
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to banana_path(@restaurant)
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
