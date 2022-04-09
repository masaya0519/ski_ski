class Admin::SkisController < ApplicationController
  
  def new
    @ski = Ski.new
  end
  
  def index
    @skis = Ski.all
  end

  def create
    @ski = Ski.new(ski_params)
    if @ski.save
      redirect_to admin_skis_path
    else
      render :new
    end  
  end

  def show
    @ski = Ski.find(params[:id])
  end

  def edit
    @ski = Ski.find(params[:id])
  end

  def update
    @ski = Ski.find(params[:id])
    if @ski.update(ski_params)
      redirect_to admin_ski_path(@ski)
    else
      render :edit
    end  
  end
  
  private
  
  def ski_params
    params.require(:ski).permit(:image, :ski_name, :explanation, :elevation, :running_distance, :cover, :quality, :genre_id,)
  end
end
