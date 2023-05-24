# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
dishoom = { name: 'Dishoom', address: '7 Boundary St, London E2 7JE', category: 'italian', phone_number: '09876543212' }
pizza_east = { name: 'Pizza East', address: '56A Shoreditch High St, London E1 6PQ', category: 'japanese', phone_number: '07876543212' }
bar_hop = { name: 'BarHop', address: '10 Hoxton', category: 'french', phone_number: '06876543212' }
troy = { name: 'Troy', address: 'Disbrowe Road', category: 'belgian', phone_number: '05876543212' }
bagelmeister = { name: 'Bagelmeister', address: 'Bootsrap street', category: 'chinese', phone_number: '04876543212' }

[dishoom, pizza_east, bar_hop, troy, bagelmeister].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
