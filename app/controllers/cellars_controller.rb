class CellarsController < ApplicationController

  #index
  def index
    @cellars = Cellar.all
  end

  #show
  def show
    @cellar = Cellar.find(params[:id])
  end

  #new

  #create

  #edit

  #update

  #destroy


end
