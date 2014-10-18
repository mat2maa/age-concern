class Admin::WhatWeOffersController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :authenticate_user!
  before_action :set_advice, only: [:edit, :update, :destroy]
  after_action :verify_authorized

  def index
    @what_we_offers = WhatWeOffer.all
    authorize WhatWeOffer
    respond_with(@what_we_offers)
  end

  def new
    authorize WhatWeOffer
    @what_we_offer = WhatWeOffer.new
    respond_with(@what_we_offer)
  end

  def edit
  end

  def create
    authorize WhatWeOffer
    @what_we_offer = WhatWeOffer.new(what_we_offer_params)
    flash[:notice] = 'WhatWeOffer was successfully created.' if @what_we_offer.save
    respond_with(@what_we_offer)
  end

  def update
    flash[:notice] = 'WhatWeOffer was successfully updated.' if @what_we_offer.update(what_we_offer_params)
    respond_with(@what_we_offer)
  end

  def destroy
    @what_we_offer.destroy
    respond_with(@what_we_offer)
  end

  private
    def set_what_we_offer
      @what_we_offer = WhatWeOffer.find(params[:id])
      authorize @what_we_offer
    end

    def what_we_offer_params
      params.require(:what_we_offer).permit(:activities_text, :groups_text)
    end
end
