# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Map.destroy_all
Place.destroy_all

user = User.create({
  first_name: "jon",
  last_name: "snow",
  email: "iknownothing@email.com",
  password: "password"
})

5.times do Map.create({
  title: Faker::GameOfThrones.city,
  description: Faker::HowIMetYourMother.catch_phrase,
  user_id: user.id
  })
end

home = Place.new(full_street_address: "25 Main St, Cooperstown, NY", map_id: Map.first)