class Admin::ContactsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :authenticate_user!
  before_action :set_contact, only: [:edit, :update, :destroy]
  after_action :verify_authorized

  def index
    @contacts = Contact.all
    authorize Contact
    respond_with(@contacts)
  end

  def new
    authorize Contact
    @contact = Contact.new
    respond_with(@contact)
  end

  def edit
  end

  def create
    authorize Contact
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to admin_contacts_path
  end

  def update
    @contact.update(contact_params)
    redirect_to admin_contacts_path
  end

  def destroy
    @contact.destroy
    redirect_to admin_contacts_path
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
      authorize @contact
    end

    def contact_params
      params.require(:contact).permit(:text, :first_name, :surname, :type, :address_line_1, :address_line_2, :town, :postcode, :county, :tel, :email_1, :email_2, :longitude, :latitude)
    end
end
