json.array!(@documents) do |document|
  json.extract! document, :id, :folio, :subtotal, :iva, :total, :written_amount, :payment_method, :account_payment, :customer_id
  json.url document_url(document, format: :json)
end
