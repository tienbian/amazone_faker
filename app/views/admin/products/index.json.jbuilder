json.array!(@products) do |product|
  json.extract! product, :id, :name, :description, :slug, :master_price, :cost_price, :cost_currency, :available_on, :sku, :category_id, :product_image
  json.url product_url(product, format: :json)
end
