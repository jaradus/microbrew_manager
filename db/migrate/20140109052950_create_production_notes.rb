class CreateProductionNotes < ActiveRecord::Migration
  def change
    create_table :production_notes do |t|
      t.integer :beer_id
      t.date :brew_date
      t.date :secondary_date
      t.date :bottling_date
      t.text :notes
      t.string :image_url

      t.timestamps
    end
  end
end
