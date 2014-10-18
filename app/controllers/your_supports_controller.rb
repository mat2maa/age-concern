class YourSupportsController < ApplicationController
  respond_to :html, :xml, :json

  def show
    @your_support = YourSupport.first
    respond_with(@your_support)
  end
end
