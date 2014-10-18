json.array!(@advices) do |advice|
  json.extract! advice, :id, :medical_text, :financial_text, :legal_text, :housing_text
  json.url advice_url(advice, format: :json)
end
