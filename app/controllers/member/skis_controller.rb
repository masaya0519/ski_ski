class Member::SkisController < ApplicationController
  def show
    @ski = Ski.find(params[:id])
    @genres = Genre.all
  end
end
