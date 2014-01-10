class Review < ActiveRecord::Base
  attr_accessible :description, :tasting_date, :title

  belongs_to :production_note

end
