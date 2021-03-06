# puts "Clearing databse"
# Garden.destroy_all if Rails.env.development?

# puts "Creating Gardens"
# little = Garden.create!(
#   name: "My Little Garden",
#   banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
# )

# other = Garden.create!(
#   name: "My Other Garden",
#   banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
# )

# puts "Creating Plants"
# Plant.create!(
#   name: "Monstera",
#   image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
#   garden: little
# )

# Plant.create!(
#   name: "Philo",
#   image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
#   garden: little
# )

# Plant.create!(
#   name: "Dieff",
#   image_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
#   garden: other
# )

names =  %w(Fruit\ tree Cactus Greasy\ plant Flower Ferns Conifers Jungle Shadow Sun)
# => ["Fruit tree", "Cactus", "Greasy plant", "Flower", "Ferns", "Conifers"]

puts "Creating Tags 🏷"
names.each do |name|
  puts "Creating #{name} tag."
  Tag.create(name: name)
end

