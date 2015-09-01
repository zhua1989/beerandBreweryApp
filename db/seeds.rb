# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create({name:"brian", password:"12345", image_url:"http://i.giphy.com/nMNzebXyK6fkY.gif"})
User.create({name:"ashley", password:"23456", image_url:"http://i.giphy.com/sLGSt1R30Api0.gif"})

Beer.create({name:"Blue Moon Honey Moon Summer Ale",beer_api_id:"PkqhUA", description:"tasty"})
Beer.create({name:"Anchor Steam",beer_api_id:"Uiol9p", description:"steamy"})
Beer.create({name:"Miller High Life",beer_api_id:"voS2XG", description:"champagne"})
Beer.create({name:"Coors Banquet",beer_api_id:"vJCXKD", description:"malty"})
Beer.create({name:"The Beast",beer_api_id:"OTB5EC", description:"the beast is a seducer"})

Tasting.create({user_id:1, beer_id:1,beer_api_id:"PkqhUA", tasting_notes:"it was a tuesday"})
Tasting.create({user_id:1, beer_id:2,beer_api_id:"Uiol9p", tasting_notes:"it was a wednesday"})
Tasting.create({user_id:1, beer_id:3,beer_api_id:"voS2XG", tasting_notes:"it was a thursday"})
Tasting.create({user_id:2, beer_id:2,beer_api_id:"Uiol9p", tasting_notes:"it was a friday"})
Tasting.create({user_id:2, beer_id:4,beer_api_id:"vJCXKD", tasting_notes:"it was a weekend"})
Tasting.create({user_id:2, beer_id:5,beer_api_id:"OTB5EC", tasting_notes:"it was a weekday"})

Comment.create({user_id:1, beer_id:1, content:"hella good"})
Comment.create({user_id:1, beer_id:2, content:"mad decent"})
Comment.create({user_id:1, beer_id:3, content:"extra medium"})
Comment.create({user_id:2, beer_id:2, content:"yo!"})
Comment.create({user_id:2, beer_id:3, content:"changed my life!"})
Comment.create({user_id:2, beer_id:4, content:"!! O_o !!"})