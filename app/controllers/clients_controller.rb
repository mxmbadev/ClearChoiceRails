class ClientsController < ApplicationController
  before_action :find_client, only: [:show, :edit, :update, :destroy]
  def index
    
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new client_params

    if @client.save
      redirect_to @client, notice: "Orale Oscar! Ya stufas! Agregaste un nuevo Cliente."
    else
      render 'new', notice: "Chiiiinnnnnnn! A chuchita la bolsearon! No se pudo agregar el Cliente"
    end
  end

  def show

  end

  def edit
  end

  def update
    if @client.update client_params
      redirect_to @client, notice: "Orale! Actualisaste un Cliente."
    else
      render 'edit'
    end
  end

  def destroy
    @client.destroy
    redirect_to clients_path
  end

  private

  def client_params
    params.require(:client).permit(:business, :city, :owner_or_manager, :number, :email, :how_often)
  end

  def find_client
    @client = Client.find(params[:id])
  end

end
