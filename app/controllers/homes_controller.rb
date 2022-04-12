class HomesController < ApplicationController
  def top
    @genres = Genre.all
    @skis = Ski.all.limit(4)
  end

  def about
  end

end
