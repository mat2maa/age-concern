class WhatWeOffersController < ApplicationController
  respond_to :html, :xml, :json

  def show
    @what_we_offer = WhatWeOffer.first
    respond_with(@what_we_offer)
  end
end
