class Url < ActiveRecord::Base
  validates :original_link, url: true
  
end
