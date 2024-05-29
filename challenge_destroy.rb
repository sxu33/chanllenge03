require_relative 'ar.rb'

product1 = Product.where(name: "New Product").first

puts "Found Product 1: #{product1.inspect}"

if product1
  product1.destroy
  puts "Product 1 deleted successfully."
else
  puts "Product 1 not found."
end