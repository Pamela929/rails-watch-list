# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning database...'
Movie.destroy_all

puts 'Creating restaurants...'

10.times do
movies = Movie.create(title: Faker::Dessert.variety, overview: Faker::Movies::PrincessBride.quote, rating: rand(1..10))
end

puts 'Finished!'
