json.array!(@product_items) do |product_item|
  json.extract! product_item, :id, :name, :price
  json.url product_item_url(product_item, format: :json)
end
