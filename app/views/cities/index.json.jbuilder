json.array!(@cities) do |city|
  json.extract! city, :name, :parent_id, :coordinate
  json.url city_url(city, format: :json)
end
