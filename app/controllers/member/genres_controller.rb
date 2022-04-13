class Member::GenresController < ApplicationController
  def index
    @genres = Genre.all
    @skis = Ski.all
    if params[:genre_id] != nil
      @skis = @skis.where(genre_id: params[:genre_id])
    end
    @genre = Genre.find(params[:genre_id])
  end
end
