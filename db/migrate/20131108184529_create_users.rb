class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.boolean :registered
      t.string :activation_key
      t.string :firstName
      t.string :lastName
      t.string :street
      t.references :city, index: true
      t.integer :zip
      t.string :phone

      t.timestamps
    end
  end
end
