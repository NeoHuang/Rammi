json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :name, :parent_id, :city_id, :street, :coordinate, :zip_code, :phone, :website, :description, :extra
  json.url restaurant_url(restaurant, format: :json)
end
