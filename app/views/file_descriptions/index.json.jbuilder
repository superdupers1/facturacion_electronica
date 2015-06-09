json.array!(@file_descriptions) do |file_description|
  json.extract! file_description, :id, :cantidad, :unit, :description, :code, :price, :amount, :document_id, :product_id
  json.url file_description_url(file_description, format: :json)
end
