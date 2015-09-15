# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cellar.destroy_all
Bottle.destroy_all

cellars = Cellar.create ([
  { name: "Sam's Private Collection", photo_url: "http://www.opusonewinery.com/assets/images/flash/images/wine.jpg", num_btls: 2 },
  { name: "Suzy's Private Collection", photo_url: "http://www.silveroak.com/content/downloads/assets/files/photos/YN2J4700.jpg", num_btls: 1 }
  ])

  Bottle.create ([
    { winery: "Del Dotto", region: "Napa Valley, CA", varietal: "Sangiovese", year: 2001, cellar_id: cellars[0].id },
    { winery: "Opus One", region: "Napa Valley, CA", varietal: "Cabernet Blend", year: 2004, cellar_id: cellars[0].id },
    { winery: "Jordan", region: "Sonoma, CA", varietal: "Chardonnay", year: 2012, cellar_id: cellars[1].id }
    ])
