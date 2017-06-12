class ContactsController < ApplicationController

	def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'Thank you. We will contact you soon!'
      redirect_to root_path
    else
      flash.now[:error] = 'Sorry, We can not seem to send this message.'
      render :new
    end
  end

end
