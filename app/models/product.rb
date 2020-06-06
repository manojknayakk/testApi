class Product < ApplicationRecord
    validates :name, :material_code, :product_category_code, presence: true
    validates :material_code, uniqueness: true
end
