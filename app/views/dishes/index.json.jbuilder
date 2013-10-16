json.array!(@dishes) do |dish|
  json.extract! dish, :name, :description, :restaurant_id_id, :is_vegi, :price, :is_msg_free, :ingredient, :meta
  json.url dish_url(dish, format: :json)
end
