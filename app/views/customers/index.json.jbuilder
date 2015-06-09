json.array!(@customers) do |customer|
  json.extract! customer, :id, :rfc, :name, :street, :number, :neighborhood, :zc, :city, :state, :country, :phone
  json.url customer_url(customer, format: :json)
end
