class Category < ApplicationRecord
  has_and_belongs_to_many :products

  validates :name, presence: true, uniqueness: true

  has_and_belongs_to_many :products

  def all_the_child_categories
    children_categories = []
    self.children_categories.each do |child_category|
        children_categories << child_category.name
    end
    children_categories
  end

  def self.parent_category
    where(category_id: nil) #que muestra todos los padres porque que no tienen padre asignado
  end
end
