# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Review.destroy_all
User.destroy_all

50.times do |index|
  @product = Product.create!(name: Faker::Food.ingredient, 
  country_of_origin: Faker::Address.country, 
  cost: Faker::Number.decimal(l_digits: 2, r_digits: 2))

  5.times do |index|
    @reviews = @product.reviews.create!(author: Faker::FunnyName.name,
    content_body: Faker::Lorem.paragraph_by_chars(number: 150),
    rating: Faker::Number.within(range: 1..5))
  end
end

p "Created #{Product.count} products"
p "Created #{Review.count} reviews"