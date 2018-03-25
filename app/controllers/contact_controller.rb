class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(message_params)
    if @contact.save
      redirect_to thankyou_page_path
    end
  end

  private

  def message_params
    params.required(:contact).permit(:first_name, :last_name, :email, :phone, :comment)
  end



end
