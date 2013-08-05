class Movie < ActiveRecord::Base
  validates :title, :description, :presence => true
  validates :year_released, :numericality => { :greater_than_or_equal_to => 1920, :less_than_or_equal_to => 2014 }
  
end
