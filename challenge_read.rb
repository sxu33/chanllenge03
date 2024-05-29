require_relative 'ar.rb'

number_of_products = Product.count

puts "There are #{number_of_products} in the products table."

product = Product.take
puts "Product: #{product.inspect}"

products_above_10 = Product.where("price > 10 AND name LIKE 'C%'")
puts "Products above $10 with names starting with C: #{products_above_10.pluck(:name)}"

low_stock_products = Product.where("stock_quantity < 5").count
puts "Total number of products with low stock quantity: #{low_stock_products}"

category_name = product.category&.name
puts "Category name of the product: #{category_name}"


specific_category = Category.first
new_product = specific_category.products.create(name: "New Product", description: "New Description", price: 15.0, stock_quantity: 10)
if new_product.save
  puts "New product created: #{new_product.inspect}"
else
  puts "Failed to create new product: #{new_product.errors.full_messages.join(', ')}"
end


expensive_products = specific_category.products.where("price > 20")
puts "Expensive products in the category: #{expensive_products.pluck(:name, :price).map { |name, price| "#{name} ($#{price})" }.join(', ')}"
