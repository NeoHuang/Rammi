class User < ActiveRecord::Base
  belongs_to :city
  
  validates_presence_of :password, :on => :create
    
end
