class Member::ReviewsController < ApplicationController
  def new
  end

  def create
    ski = Ski.find(params[:ski_id])
    review = current_member.reviews.new(review_params)
    review.ski_id = ski.id
    review.save
    redirect_to ski_path(ski)
  end

  def index
  end

  def destroy
    Review.find(params[:id]).destroy
    redirect_to ski_path(params[:ski_id])
  end

  private

  def review_params
    params.require(:review).permit(:review)
  end
end
