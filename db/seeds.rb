require 'faker'

puts 'Deleting restaurants...'
Restaurant.destroy_all
puts 'Restaurants deleted'

puts 'Creating restaurants...'
categories = %w[chinese italian japanese french belgian]
20.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: categories.sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
end
puts 'Finished!'
