class LogsController < ApplicationController
  def create
    @log = Log.find(params[:client_id])
    @log = @client.comments.create(params[:log].permit(:date, :service, :payment_status, :amount))
    redirect_to client_path(@client)
  end
end
