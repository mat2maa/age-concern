class Admin::AdvicesController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :authenticate_user!
  before_action :set_advice, only: [:edit, :update, :destroy]
  after_action :verify_authorized

  def index
    authorize Advice
    @advices = Advice.all
    respond_with(@advices)
  end

  def new
    authorize Advice
    @advice = Advice.new
    respond_with(@advice)
  end

  def edit
  end

  def create
    authorize Advice
    @advice = Advice.new(advice_params)
    @advice.save
    redirect_to admin_advices_path
  end

  def update
    @advice.update(advice_params)
    redirect_to admin_advices_path
  end

  def destroy
    @advice.destroy
    redirect_to admin_advices_path
  end

  private
    def set_advice
      @advice = Advice.find(params[:id])
      authorize @advice
    end

    def advice_params
      params.require(:advice).permit(:medical_text, :financial_text, :legal_text, :housing_text)
    end
end
