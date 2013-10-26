class Restaurant < ActiveRecord::Base
  belongs_to :city
  has_many :dishes
  has_and_belongs_to_many :restaurant_categories
  
  validates_presence_of :name, :street, :zip_code
  validates_uniqueness_of :name, :scope => :zip_code
end
