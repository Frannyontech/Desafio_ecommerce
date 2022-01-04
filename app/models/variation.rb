class Variation < ApplicationRecord
  belongs_to :product
  belongs_to :color
  belongs_to :size
  has_many :order_items
  
  # hacer que el scope del producto una color y talla
  validates :product_id, uniqueness: { scope: [:color_id, :size_id] }
end
