class Member::SkisController < ApplicationController
  before_action :authenticate_member!

  def show
    @ski = Ski.find(params[:id])
    @genres = Genre.all
    if params[:genre_id] != nil
      @skis = @skis.where(genre_id: params[:genre_id])
    end
    @review = Review.new
  end


end
