class Url < ActiveRecord::Base

  validates :link, :presence => true

  def generate_short_code
    self.short_code = rand(99999999)
  end

  def short_link
    "http://localhost:3000/#{short_code}"
  end

  def long_link
    "http://#{link}"
  end
end
