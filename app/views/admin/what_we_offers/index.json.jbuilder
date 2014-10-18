json.array!(@what_we_offers) do |what_we_offer|
  json.extract! what_we_offer, :id, :activities_text, :groups_text
  json.url what_we_offer_url(what_we_offer, format: :json)
end
