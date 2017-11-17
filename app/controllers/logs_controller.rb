class LogsController < ApplicationController
  before_action :find_client
  before_action :find_log, only: [:destroy, :edit, :update]
  def create
    @log = @client.logs.create log_params
    if @log.save
      redirect_to client_path(@client), notice: "You sucessfully created a new Log"
    else
      render 'new'
    end
  end

  def destroy
    @log.destroy
    redirect_to client_path(@client), notice: "You sucessfully DELETED a Log"
  end

  def edit

  end

  def update
    if @log.update log_params
      redirect_to client_path(@client), notice: "Updated Sucessfully"
    else
      render 'edit'
    end
  end

  private

  def log_params
    params.require(:log).permit(:date_of_service, :service, :payment_status, :amount)
  end

  def find_client
    @client = Client.find(params[:client_id])
  end

  def find_log
    @log = @client.logs.find(params[:id])
  end
end
