class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.text :description
      t.references :restaurant_id, index: true
      t.boolean :is_vegi
      t.decimal :price
      t.boolean :is_msg_free
      t.text :ingredient
      t.text :meta

      t.timestamps
    end
  end
end
