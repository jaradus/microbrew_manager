class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :title
      t.text :description
      t.date :tasting_date
      t.belongs_to :production_note

      t.timestamps
    end
  end
end
