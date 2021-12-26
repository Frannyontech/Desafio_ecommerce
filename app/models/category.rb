class Category < ApplicationRecord
  has_and_belongs_to_many :products, dependent: :destroy
  has_many :children, class_name: 'Category', dependent: :destroy
  belongs_to :parent, class_name: 'Category', foreign_key: :category_id, optional: true

  scope :all_parents, -> {where(category_id: nil)}
  scope :bla, -> {where.not(category_id: nil)}

end
