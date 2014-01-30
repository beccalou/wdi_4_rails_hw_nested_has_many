# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Author.find(2).articles << Article.create(body: "Being better takes a lot of work.", title: "Be Better")
Author.find(2).articles << Article.create(body: "Buying butter is fun.", title: "Buy Butter")
Author.find(3).articles << Article.create(body: "Cooking crawdads, who ever thought they would?", title: "Cook Crawdads")
Author.find(3).articles << Article.create(body: "Cradles made of crayons are in fact, not that safe", title: "Create Crayon Cradles")
Author.find(4).articles << Article.create(body: "Dryers can break.", title: "Digging Deeper: Dryers")
Author.find(4).articles << Article.create(body: "Drapes are heavy usually", title: "Digging Deeper: Drapes")
Author.find(5).articles << Article.create(body: "Eating eggplant is good for you and me.", title: "Eat Eggplant!")
Author.find(5).articles << Article.create(body: "Energy and the Earth-- it's complicated.", title: "Energy and Earth")

Article.find(1).comments << Comment.create(body:"This is the best article I've ever read!")
Article.find(1).comments << Comment.create(body:"If you need direction and purpose, this is a must read.")
Article.find(2).comments << Comment.create(body:"Waste of time, whoever wrote this doesn't know their stuff.")
Article.find(2).comments << Comment.create(body:"I completely agree with the author! Kudos!")
Article.find(3).comments << Comment.create(body:"What!?!?")
Article.find(3).comments << Comment.create(body:"Please check out my blog www.myblog.com!")
Article.find(4).comments << Comment.create(body:"Hey author, email me, I want to talk to you about this")
Article.find(4).comments << Comment.create(body:"Hello?")


