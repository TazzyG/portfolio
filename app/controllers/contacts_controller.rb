class ContactsController < ApplicationController

	def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      redirect_to :back, notice: 'Thank you. Your message was delivered!'
    else
      flash.now[:error] = 'Sorry, We can not seem to send this message.'
      render :new
    end
  end

end
