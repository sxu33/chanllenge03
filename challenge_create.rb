require_relative 'ar.rb'

product1 = Product.create(name: "Product 1", description: "Description 1", price: 10.0, stock_quantity: 15)
if product1.save
  puts "Product 1 created and saved successfully."
else
  puts "Errors: #{product1.errors.full_messages.join(', ')}"
end

product2 = Product.new
product2.name = "Product 2"
product2.description = "Description 2"
product2.price = 20.0
product2.stock_quantity = 25
if product2.save
  puts "Product 2 created and saved successfully."
else
  puts "Errors: #{product2.errors.full_messages.join(', ')}"
end


product3 = Product.new do |p|
  p.name = "Product 3"
  p.description = "Description 3"
  p.price = 30.0
  p.stock_quantity = 35
end
if product3.save
  puts "Product 3 created and saved successfully."
else
  puts "Errors: #{product3.errors.full_messages.join(', ')}"
end


invalid_product = Product.new(description: "No Name", price: 5.0, stock_quantity: 5)
if invalid_product.save
  puts "Invalid product saved successfully."
else
  puts "Errors: #{invalid_product.errors.full_messages.join(', ')}"
end
