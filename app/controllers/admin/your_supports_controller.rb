class Admin::YourSupportsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :authenticate_user!
  before_action :set_advice, only: [:edit, :update, :destroy]
  after_action :verify_authorized

  def index
    @your_supports = YourSupport.all
    authorize YourSupport
    respond_with(@your_supports)
  end

  def new
    authorize YourSupport
    @your_support = YourSupport.new
    respond_with(@your_support)
  end

  def edit
  end

  def create
    authorize YourSupport
    @your_support = YourSupport.new(your_support_params)
    @your_support.save
    respond_with(@your_support)
  end

  def update
    @your_support.update(your_support_params)
    respond_with(@your_support)
  end

  def destroy
    @your_support.destroy
    respond_with(@your_support)
  end

  private
    def set_your_support
      @your_support = YourSupport.find(params[:id])
      authorize @your_support
    end

    def your_support_params
      params.require(:your_support).permit(:text)
    end
end
