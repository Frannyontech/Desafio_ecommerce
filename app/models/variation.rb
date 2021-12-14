class Variation < ApplicationRecord
  belongs_to :product
  belongs_to :color
  belongs_to :size
  
  # hacer que el scode del producto una color y talla
  validates :product_id, uniqueness: { scope: [:color_id, :size_id] }
end
