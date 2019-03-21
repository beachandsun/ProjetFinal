# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# #   Character.create(name: 'Luke', movie: movies.first)


# puts "Delete all"
# Address.destroy_all
# User.destroy_all
# Place.destroy_all
# puts "Clean done"

# puts "Create addresses"
# 10.times do
# 	address = Address.create(address_number: Faker::Address.building_number, address_main: Faker::Address.street_name, city: "Montpellier", postal_code: "34000", country: "France") 
# end
# puts "Adresses created"

# puts "Create users"
# 5.times do
# 	user = User.create(email: Faker::Internet.free_email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "motdepasse", wifi: [true, false].sample, price: [true, false].sample, e_outlet: [true, false].sample, access_handi: [true, false].sample, vibe: ["exotique", "pop", "electronique" "hip_hop", "classic", "lounge"].sample, vegan: [true, false].sample, address_id: rand(Address.all.first.id..Address.all.last.id))
# 	end
# puts "Users created"	

# puts "Create places"
# 5.times do
# 		place = Place.create(name: Faker::Artist.name,description: Faker::Movies::HarryPotter.quote, phone_number: 456748394, wifi: [true, false].sample, price: [true, false].sample, e_outlet: [true, false].sample, access_handi: [true, false].sample, vibe: ["hip_hop", "classic", "exotique", "lounge", "electronique", "pop"].sample, vegan: [true, false].sample, address_id: rand(Address.all.first.id..Address.all.last.id))
# 	end
# puts "Places created"		

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts "Delete all"
Address.destroy_all
User.destroy_all
Place.destroy_all
puts "Clean done"

puts "Create addresses"
2.times do
	address = Address.create(address_number: "2", address_main: "allee joseph cambon", city: "saint-jean-de-vedas", postal_code: "34430", country: "France") 
end
2.times do
	address = Address.create(address_number: "202", address_main: "rue de la croix du sud", city: "Montpellier", postal_code: "34000", country: "France") 
end
2.times do
	address = Address.create(address_number: "6", address_main: "avenue danton demar", city: "cournonterral", postal_code: "34660", country: "France") 
end
puts "Adresses created"

puts "Create users"
5.times do
	user = User.create(email: Faker::Internet.free_email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "motdepasse", wifi: [true, false].sample, price: [true, false].sample, e_outlet: [true, false].sample, access_handi: [true, false].sample, vibe: ["exotique", "pop", "electronique", "hip_hop", "classic", "lounge"].sample, vegan: [true, false].sample, address_id: rand(Address.all.first.id..Address.all.last.id))
	end
puts "Users created"	

puts "Create places"
5.times do
		place = Place.create(name: Faker::Coffee.blend_name, description: Faker::Movies::HarryPotter.quote, phone_number: 456748394, wifi: [true, false].sample, price: [true, false].sample, e_outlet: [true, false].sample, access_handi: [true, false].sample, vibe: ["hip_hop", "classic", "exotique", "lounge", "electronique", "pop"].sample, vegan: [true, false].sample, address_id: rand(Address.all.first.id..Address.all.last.id))
	end
	place2 = Place.create(name: Faker::Coffee.blend_name, description: Faker::Movies::HarryPotter.quote, phone_number: 456748394, wifi: [true, false].sample, price: [true, false].sample, e_outlet: [true, false].sample, access_handi: [true, false].sample, vibe: ["hip_hop", "classic", "exotique", "lounge", "electronique", "pop"].sample, vegan: [true, false].sample, address_id: Address.all.last.id)
	end
puts "Places created"

