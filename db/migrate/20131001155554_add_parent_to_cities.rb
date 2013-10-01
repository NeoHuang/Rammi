class AddParentToCities < ActiveRecord::Migration
  def change
    add_column :cities, :parent_id, :integer
  end
end 