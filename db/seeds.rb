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
puts "clen done"

puts "Create addresses"
10.times do
	address = Address.create(address_number: Faker::Address.building_number, address_main: Faker::Address.street_name, city: "Montpellier", postal_code: "34000", country: "France") 
end
puts "Adresses created"

puts "Create users"
5.times do
	user = User.create(email: Faker::Internet.free_email, first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, password: "motdepasse", wifi: [true, false].sample, price: [true, false].sample, e_outlet: [true, false].sample, access_handi: [true, false].sample, vibe: ["cozy", "chic", "chill", "lounge"].sample, vegan: [true, false].sample, address_id: rand(User.all.first.id..User.all.last.id))
	end
puts "Users created"	

puts "Create places"
5.times do
		place = Place.create(name: Faker::Artist.name,description: Faker::Movies::HarryPotter.quote, phone_number: Faker::PhoneNumber.cell_phone, wifi: [true, false].sample, price: [true, false].sample, e_outlet: [true, false].sample, access_handi: [true, false].sample, vibe: ["cozy", "chic", "chill", "lounge"].sample, vegan: [true, false].sample, address_id: rand(User.all.first.id..User.all.last.id))
	end
puts "Places created"		