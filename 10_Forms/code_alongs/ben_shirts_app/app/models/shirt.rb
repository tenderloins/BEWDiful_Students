class Shirt < ActiveRecord::Base
  validates :name, :description, :presence => true
end
