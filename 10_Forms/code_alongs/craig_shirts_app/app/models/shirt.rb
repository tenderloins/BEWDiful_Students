class Shirt < ActiveRecord::Base
  validates :name, :description, :presence => true #when i'm trying to .save if name is blank save won't return true, or save

  
  
end
