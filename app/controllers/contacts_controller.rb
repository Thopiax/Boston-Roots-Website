class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    if (@contact.valid?)
      @contact.request = request
      if @contact.deliver
        flash[:notice] = 'Thank you for your message. We will contact you soon!'
        redirect_to contacts_path
      else
        flash[:error] = 'Cannot send message.'
        render :new
      end
    else
      flash.clear
      render :new
    end
  end
end