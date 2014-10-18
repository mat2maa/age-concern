class NewsController < ApplicationController
  respond_to :html, :xml, :json

  def show
    @news = News.first
    respond_with(@news)
  end
end
