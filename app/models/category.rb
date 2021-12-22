class Category < ApplicationRecord
  has_and_belongs_to_many :products, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  def children_categories
    Category.all.where(category_id: self.id)
  end

  def self.all_children(parent_id = nil)
    categories_hash = {}

    Category.all.where(category_id: parent_id).each do |parent|
      categories_hash[ parent.name.to_sym ] = parent.children_categories
    end
    categories_hash
  end
end
