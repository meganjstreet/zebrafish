class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.valid?
      ContactMailer.contact_email(@contact).deliver_now
      flash[:notice] = "Message sent successfully!"
      redirect_to contact_path
    else
      flash.now[:alert] = "Please fill in all fields correctly."
      render :new
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :message)
  end
end
