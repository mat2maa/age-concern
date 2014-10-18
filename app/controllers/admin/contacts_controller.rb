class Admin::ContactsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :authenticate_user!
  before_action :set_advice, only: [:edit, :update, :destroy]
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
    respond_with(@contact)
  end

  def update
    @contact.update(contact_params)
    respond_with(@contact)
  end

  def destroy
    @contact.destroy
    respond_with(@contact)
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
