json.array!(@news) do |news|
  json.extract! news, :id, :title, :subtitle, :post_text, :start_date, :end_date, :main_image, :main_image_file_size, :main_image_content_type
  json.url news_url(news, format: :json)
end
