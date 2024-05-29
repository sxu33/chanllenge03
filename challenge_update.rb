require_relative 'ar.rb'

products_with_high_stock = Product.where("stock_quantity > 40")

products_with_high_stock.each do |product|
  product.stock_quantity += 1
  if product.save
    puts "Product ID #{product.id} stock quantity increased to #{product.stock_quantity}."
  else
    puts "Failed to update Product ID #{product.id}: #{product.errors.full_messages.join(', ')}"
  end
end