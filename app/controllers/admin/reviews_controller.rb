class Admin::ReviewsController < ApplicationController

  def destroy
    Review.find(params[:id]).destroy
    redirect_to admin_customer_path(params[:customer_id])
  end

  private

  def review_params
    params.require(:review).permit(:review)
  end
end
