class Restaurant < ActiveRecord::Base
  belongs_to :city
  has_many :dishes
  has_and_belongs_to_many :restaurant_categories
end
