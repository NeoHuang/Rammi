json.array!(@users) do |user|
  json.extract! user, :name, :password, :email, :registered, :activation_key, :firstName, :lastName, :street, :city_id, :zip, :phone
  json.url user_url(user, format: :json)
end
