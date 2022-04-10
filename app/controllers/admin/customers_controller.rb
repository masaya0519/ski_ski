class Admin::CustomersController < ApplicationController
  def index
    @members = Member.all
  end

  def show
    @member = Member.find(params[:id])
  end

  private

  def customer_params
    params.require(:member).permit(:name)
  end
end
