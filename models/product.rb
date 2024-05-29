class Product < ActiveRecord::Base
  # This AR object is linked with the products table.
  belongs_to :category
  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  validates :name, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :description, presence: true
  validates :price, presence: true
  validates :stock_quantity, presence: true
  # Columns:Product id, name, description, price, stock_quantity, category_id, created_at, updated_at

end