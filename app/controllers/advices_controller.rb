class AdvicesController < ApplicationController
  respond_to :html, :xml, :json

  def show
    @advice = Advice.first
    respond_with(@advice)
  end
end
