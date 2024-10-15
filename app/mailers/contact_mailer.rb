class ContactMailer < ApplicationMailer
  default to: 'james@zebrafishmedia.com' # Change this to your desired recipient email address

  def contact_email(contact)
    @contact = contact
    mail(from: @contact.email, subject: 'New Contact Form Message')
  end
end
