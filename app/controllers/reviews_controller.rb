class ReviewsController < ApplicationController
  before_action :set_review, only: %i[destroy]
  def destroy
    @review.destroy
  end

  def create
    @review = Review.new(review_params)
    @review.save
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content)
  end
end
