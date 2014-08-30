class CafesController < ApplicationController

  def index
    @cafes = Cafe.all
    @days = %w(mon tue wed thu fri sat sun)
  end

  def new
    @cafe = Cafe.new
    @days = %w(mon tue wed thu fri sat sun)
  end

  def show
    @cafe = Cafe.find(params[:id])
  end

  def edit
    @cafe = Cafe.find(params[:id])
    @days = %w(mon tue wed thu fri sat sun)
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
                                 :mon_open, :mon_close, :mon_holiday, 
                                 :tue_open, :tue_close, :tue_holiday, 
                                 :wed_open, :wed_close, :wed_holiday, 
                                 :thu_open, :thu_close, :thu_holiday, 
                                 :fri_open, :fri_close, :fri_holiday, 
                                 :sat_open, :sat_close, :sat_holiday, 
                                 :sun_open, :sun_close, :sun_holiday)
  end

end
