class Product < ApplicationRecord
  has_many :product_variants
  belongs_to :artist
  has_many :carted_products
  has_many :orders, through: :carted_products
end
