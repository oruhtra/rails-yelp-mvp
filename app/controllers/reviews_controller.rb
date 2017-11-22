class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :destroy]

  def show
    @restaurant = Restaurant.find(@review.restaurant_id)
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  def destroy
    @restaurant = Restaurant.find(@review.restaurant_id)
    @review.delete
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
