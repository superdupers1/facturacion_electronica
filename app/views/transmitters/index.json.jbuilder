json.array!(@transmitters) do |transmitter|
  json.extract! transmitter, :id, :rfc, :name, :street, :number, :neighborhood, :zc, :city, :state, :country, :phone
  json.url transmitter_url(transmitter, format: :json)
end
