class CellarsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  #index
  def index
    @cellars = Cellar.all
  end

  #unique route for individual cellars
  def mycellars
    @cellars = current_user.cellars
  end

  #show
  def show
    @cellar = Cellar.find(params[:id])
  end

  #new
  def new
    @cellar = Cellar.new
  end

  #create
  def create
    @cellar = current_user.cellars.create(cellar_params)
    if @cellar.save
      redirect_to "/cellars/#{@cellar.id}"
    else
      redirect_to "/cellars/new"
    end
  end

  #edit
  def edit
    @cellar = Cellar.find(params[:id])
  end

  #update
  def update
    @cellar = Cellar.find(params[:id])
    @cellar.update(cellar_params)
    redirect_to "/cellars/#{@cellar.id}"
  end

  #destroy
  def destroy
    @cellar = Cellar.find(params[:id])
    @cellar.destroy
    redirect_to cellars_path
  end

  private
  def cellar_params
    params.require(:cellar).permit(:name, :photo_url, :num_btls)
  end

end
