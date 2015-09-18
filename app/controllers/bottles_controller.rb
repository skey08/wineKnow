class BottlesController < ApplicationController

  #index
  def index
    @bottles = Bottle.all
  end

  #show
  def show
    @bottle = Bottle.find(params[:id])
    # @cellar = Cellar.find(params[:id])
  end

  #new
  def new
    @cellar = Cellar.find(params[:cellar_id])
    @bottle = Bottle.new
  end

  #create
  def create
    @cellar = Cellar.find(params[:cellar_id])
    @bottle = @cellar.bottles.create(bottle_params)
    redirect_to cellar_path(@cellar)
  end

  #edit
  def edit
    @bottle = Bottle.find(params[:id])
    @cellar = Cellar.find(params[:id])
  end

  #update
  def update
    @bottle = Bottle.find(params[:id])
    @bottle.update(bottle_params)
    redirect_to cellar_bottle_path
  end

  #destroy
  def destroy
    @bottle = Bottle.find(params[:id])
    @bottle.destroy
    @cellar = Cellar.find(params[:cellar_id])
    redirect_to cellar_path(@cellar)
  end

  private
  def bottle_params
    params.require(:bottle).permit(:winery, :region, :varietal, :year, :cellar_id)
  end

end
