# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create({name:"brian", password:"12345", image_url:"http://i.giphy.com/nMNzebXyK6fkY.gif"})
User.create({name:"ashley", password:"23456", image_url:"http://i.giphy.com/sLGSt1R30Api0.gif"})

Beer.create({name:"blue moon", description:"tasty"})
Beer.create({name:"anchor steam", description:"steamy"})
Beer.create({name:"high life", description:"champagne"})
Beer.create({name:"coors", description:"malty"})
Beer.create({name:"the beast", description:"milwaukee's best"})

Tasting.create({user_id:1, beer_id:1, tasting_notes:"it was a tuesday"})
Tasting.create({user_id:1, beer_id:2, tasting_notes:"it was a wednesday"})
Tasting.create({user_id:1, beer_id:3, tasting_notes:"it was a thursday"})
Tasting.create({user_id:2, beer_id:2, tasting_notes:"it was a friday"})
Tasting.create({user_id:2, beer_id:4, tasting_notes:"it was a weekend"})
Tasting.create({user_id:2, beer_id:5, tasting_notes:"it was a weekday"})

Comment.create({user_id:1, beer_id:1, content:"hella good"})
Comment.create({user_id:1, beer_id:2, content:"mad decent"})
Comment.create({user_id:1, beer_id:3, content:"extra medium"})
Comment.create({user_id:2, beer_id:2, content:"yo!"})
Comment.create({user_id:2, beer_id:3, content:"changed my life!"})
Comment.create({user_id:2, beer_id:4, content:"!! O_o !!"})