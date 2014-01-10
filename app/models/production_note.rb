class ProductionNote < ActiveRecord::Base
  attr_accessible :beer_id, :bottling_date, :brew_date, :image_url, :notes, :secondary_date

  belongs_to :beer
  has_many :reviews

end
