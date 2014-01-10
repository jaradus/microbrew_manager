# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@beer = Beer.create({
      name: "Dead Ringer IPA",
      description: "Dead Ringer is an homage to a benchmark of the American IPA style that’s brewed in Michigan. American base malt and crystal malt create the big body and supporting grainy sweetness, while charge after charge of 100% Centennial Type hops deliver pronounced bitterness with a dominant citrus aroma and flavor. In the glass you get a pale amber color, hop intensity and malt density - substance with the soul of a session beer.",
      batch_yield: 5,
      regional_style: "USA",
      beer_style: "IPA",
      color: "Amber",
      original_gravity: 1064,
      final_gravity: 0,
      time_to_make: 6,
      image_url: "http://www.northernbrewer.com/shop/media/catalog/product/cache/3/image/245x245/9df78eab33525d08d6e5fb8d27136e95/i/m/image_3546.jpg",
      })

@brew = ProductionNote.create({
  beer_id: Beer.find_by_name("Dead Ringer IPA").id,
  brew_date: "2014-01-09",
  secondary_date: "2014-02-09",
  bottling_date: "2014-03-09",
  notes: "Very nice, would make again",
  image_url: "http://www.northernbrewer.com/shop/media/catalog/product/cache/3/image/245x245/9df78eab33525d08d6e5fb8d27136e95/i/m/image_3546.jpg"
  })

@review = Review.create({
  description: "Light with a hoppy finish", 
  tasting_date: "2014-1-7",
  title: "Success!"
  })