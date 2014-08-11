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
    @cafe = Cafe.find(params[:id])
    @cafe.destroy
    redirect_to cafes_path
  end


  private

  def cafe_params
    params.require(:cafe).permit(:name, :address, :tel, 
                                 :mon_open, :mon_close, 
                                 :tue_open, :tue_close, 
                                 :wed_open, :wed_close, 
                                 :thu_open, :thu_close, 
                                 :fri_open, :fri_close, 
                                 :sat_open, :sat_close, 
                                 :sun_open, :sun_close)
  end

end
