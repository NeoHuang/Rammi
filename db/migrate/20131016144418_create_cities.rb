class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.integer :parent_id
      t.string :coordinate

      t.timestamps
    end
  end
end
