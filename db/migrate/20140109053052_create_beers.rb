class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.text :description
      t.integer :batch_yield
      t.string :regional_style
      t.string :beer_style
      t.string :color
      t.integer :original_gravity
      t.integer :final_gravity
      t.integer :time_to_make
      t.string :image_url

      t.timestamps
    end
  end
end
