json.array!(@contacts) do |contact|
  json.extract! contact, :id, :text, :first_name, :surname, :type, :address_line_1, :address_line_2, :town, :postcode, :county, :tel, :email_1, :email_2, :longitude, :latitude
  json.url contact_url(contact, format: :json)
end
