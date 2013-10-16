class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :parent_id
      t.references :city, index: true
      t.string :street
      t.string :coordinate
      t.string :zip_code
      t.string :phone
      t.string :website
      t.text :description
      t.text :extra

      t.timestamps
    end
  end
end
