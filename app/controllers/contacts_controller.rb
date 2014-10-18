class ContactsController < ApplicationController
  respond_to :html, :xml, :json

  def show
    @contact = Contact.first
    respond_with(@contact)
  end
end
