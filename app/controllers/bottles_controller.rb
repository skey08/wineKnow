class BottlesController < ApplicationController

  #index
  def index
    @bottles = Bottle.all
  end

  #show
  def show
    @bottle = Bottle.find(params[:id])
    @cellars = Cellar.find(params[:id])
  end

  #new

  #create

  #edit

  #update

  #destroy


end
