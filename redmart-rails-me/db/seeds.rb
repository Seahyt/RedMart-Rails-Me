# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(0..50).each do |i|
  User.create!(
  name: Faker::Name.name,
  email: Faker::Internet.email ,
  # study on this pwd digest again, faker and seeding
  password: "testtest",
  password_confirmation: "testtest",
  cc_number: Faker::Business.credit_card_number,
  delivery_address: Faker::Address.street_address
  )
end

(0..50).each do |i|
  Product.create!(
  name: Faker::Name.name,
  description: Faker::Lorem.sentence,
  price: Faker::Commerce.price
  )
end

(0..50).each do |i|
  Review.create!(
  user_id: rand(1..50),
  product_id: rand(1..50),
  feedback: Faker::Lorem.sentence
  )
end
