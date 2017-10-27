class ContactsController < ApplicationController

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:error] = nil
      redirect_to root_path, notice: "Thank you for your quote request. We will get in touch with you."
    else
      flash.now[:error] = 'Sorry Cannot send message.'
      render :new
    end
  end
end