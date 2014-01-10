class Beer < ActiveRecord::Base
  attr_accessible :batch_yield, :beer_style, :color, :description, :final_gravity, :image_url, :name, :original_gravity, :regional_style, :time_to_make

  has_many :production_notes

end
