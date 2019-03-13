class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to root_path, :notice => 'Your message Sent!!'
    else
      render 'new'
    end
  end

  public 
  def contact_params
    params.permit(:contact).require(:name, :email, :message)
  end

end
