json.array!(@your_supports) do |your_support|
  json.extract! your_support, :id, :text
  json.url your_support_url(your_support, format: :json)
end
