class CafesController < ApplicationController


  def index
    @cafes = Cafe.all
  end


  def new
    @cafe = Cafe.new
  end


  def show
    @cafe = Cafe.find(params[:id])
  end


  def edit
    @cafe = Cafe.find(params[:id])
  end


  def create
    @cafe = Cafe.new(cafe_params)
    if @cafe.save
      redirect_to cafes_path
    else
      render :new
    end
  end


  def update
    @cafe = Cafe.find(params[:id])
    if @cafe.update(cafe_params)
      redirect_to cafes_path
    else
      render :edit
    end
  end


  def destroy
    
  end


  private

  def cafe_params
    params.require(:cafe).permit(:name, :address, :tel)
  end

end
