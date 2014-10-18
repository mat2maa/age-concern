class Admin::NewsController < ApplicationController
  respond_to :html, :xml, :json
  before_filter :authenticate_user!
  before_action :set_advice, only: [:edit, :update, :destroy]
  after_action :verify_authorized

  def index
    @news = News.all
    authorize News
    respond_with(@news)
  end

  def new
    authorize News
    @news = News.new
    respond_with(@news)
  end

  def edit
  end

  def create
    authorize News
    @news = News.new(news_params)
    @news.save
    respond_with(@news)
  end

  def update
    @news.update(news_params)
    respond_with(@news)
  end

  def destroy
    @news.destroy
    respond_with(@news)
  end

  private
    def set_news
      @news = News.find(params[:id])
      authorize @news
    end

    def news_params
      params.require(:news).permit(:title, :subtitle, :post_text, :start_date, :end_date, :main_image, :main_image_file_size, :main_image_content_type)
    end
end
