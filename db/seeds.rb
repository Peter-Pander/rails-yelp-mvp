# db/seeds.rb
require 'faker'

categories = ["chinese", "italian", "japanese", "french", "belgian"]

5.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: categories.sample # Randomly choose a category from the array
  )
end
