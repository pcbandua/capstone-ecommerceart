class Product < ApplicationRecord
  has_many :product_variants
  belongs_to :artist
end
