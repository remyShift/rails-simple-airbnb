# frozen_string_literal: true

# Delete all flats
puts 'Deleting all flats ... 🗑️'
Flat.destroy_all

# Create 5 fake flats
puts 'Creating flats ... ⌛'

5.times do
  Flat.create!(
    name: Faker::FunnyName.two_word_name,
    address: Faker::Address.full_address,
    description: Faker::Lorem.paragraph,
    price_per_night: Faker::Number.between(from: 50, to: 150),
    number_of_guests: Faker::Number.between(from: 1, to: 5)
  )
end

puts "Created #{Flat.count} flats ... 🎉"
