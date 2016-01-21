class CitiesController < ApplicationController
  before_action :find_city, only: [:show, :edit, :update, :destroy]
  def index
    @cities = City.all.order("created_at desc")
  end

  def new
    @city = City.new
  end

  def create
    @city = City.new city_params

    if @city.save
      redirect_to @city, notice: "Orale Oscar! Ya stufas! Agregaste una nueva Ciudad."
    else
      render 'new', notice: "Chiiiinnnnnnn! A chuchita la bolsearon! No se pudo agregar la Ciudad"
    end
  end

  def show

  end

  def edit
  end

  def update
    if @city.update city_params
      redirect_to @city, notice: "Orale! Actualisaste una Ciudad."
    else
      render 'edit'
    end
  end

  def destroy
    @city.destroy
    redirect_to cities_path
  end

  private

  def city_params
    params.require(:city).permit(:name, :city_id)
  end

  def find_city
    @city = City.find(params[:id])
  end

end
