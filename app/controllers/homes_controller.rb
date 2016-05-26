class HomesController < ApplicationController
  before_action :find_home, only: [:show, :edit, :update, :destroy]
  def index
    @clients = Client.all.order("created_at desc")
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new home_params

    if @home.save
      redirect_to @home, notice: "Orale Oscar! Ya stufas! Agregaste un nuevo Cliente Residential."
    else
      render 'new', notice: "Chiiiinnnnnnn! A chuchita la bolsearon! No se pudo agregar el Cliente Residential"
    end
  end

  def show

  end

  def edit
  end

  def update
    if @home.update home_params
      redirect_to @home, notice: "Orale! Actualisaste un Cliente."
    else
      render 'edit'
    end
  end

  def destroy
    @home.destroy
    redirect_to home_path
  end

  private

  def home_params
    params.require(:home).permit(:dateOfService, :name, :phone, :address, :price, :next_service, :notes)
  end

  def find_home
    @home = Home.find(params[:id])
  end

end
