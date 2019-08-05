require "faker"
puts "Adding 10 restaurants..."
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Dessert.variety,
    city: Faker::Dessert.topping,
    capacity: rand(1..156)
  )
  puts "Adding #{restaurant.name}..."
end
puts "Finished adding restaurants."
