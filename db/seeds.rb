# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
# #
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 10.times do
# 	hipster_words = []
# 	100.times do
# 		hipster_words << "#{Faker::HipsterIpsum.word} "
# 	end
# 	Activity.create(
# 		title: "eating some #{Faker::Food.meat}",
# 		description: hipster_words.join,
# 		location: "San Francisco, USA",
# 		time_min: rand(30..60),
# 		time_max: rand(120..480),
# 		img_url: 'http://lorempixel.com/1000/700/'
# 	)
# end

Activity.create(
		title: "Beekeeping at Holland Farms",
		description: "This is the activity description which will provide the user with information about the activity itself, as well different aspects of it would be exciting.",
		location: "San Francisco, USA",
		time_min: rand(30..60),
		time_max: rand(120..480),
		img_url: 'http://fuzzco.com/wp-content/uploads/2013/07/honey.jpg'
	)

	Activity.create(
		title: "Beekeeping at Holland Farms",
		description: "This is the activity description which will provide the user with information about the activity itself, as well different aspects of it would be exciting.",
		location: "San Francisco, USA",
		time_min: rand(30..60),
		time_max: rand(120..480),
		img_url: 'http://fuzzco.com/wp-content/uploads/2013/07/honey.jpg'
	)

	Activity.create(
		title: "Beekeeping at Holland Farms",
		description: "This is the activity description which will provide the user with information about the activity itself, as well different aspects of it would be exciting.",
		location: "San Francisco, USA",
		time_min: rand(30..60),
		time_max: rand(120..480),
		img_url: 'http://fuzzco.com/wp-content/uploads/2013/07/honey.jpg'
	)