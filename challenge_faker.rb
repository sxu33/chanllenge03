require_relative 'ar.rb'
require 'faker'

10.times do
  category = Category.create(name: Faker::Commerce.department)

  10.times do
    category.products.create(
      name: Faker::Commerce.product_name,
      description: Faker::Lorem.sentence,
         price: Faker::Commerce.price,
        stock_quantity: Faker::Commerce.price
    )
  end
end

puts "10 categories and 100 products created successfully."
