json.array!(@menus) do |menu|
  json.extract! menu, :name, :restaurant_id
  json.url menu_url(menu, format: :json)
end
