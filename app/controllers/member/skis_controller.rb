class Member::SkisController < ApplicationController
  def show
    @ski = Ski.find(params[:id])
    @genres = Genre.all
    if params[:genre_id] != nil
      @skis = @skis.where(genre_id: params[:genre_id])
    end
    # @genre = Genre.find(params[:genre_id])
  end
end
