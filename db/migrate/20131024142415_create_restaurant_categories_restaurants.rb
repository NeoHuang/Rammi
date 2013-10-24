class CreateRestaurantCategoriesRestaurants< ActiveRecord::Migration
  def change
    create_table :restaurant_categories_restaurants do |t|
      t.belongs_to :restaurant
      t.belongs_to :restaurant_category
    end
  end
end
