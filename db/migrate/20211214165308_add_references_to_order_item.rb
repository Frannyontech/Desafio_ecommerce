class AddReferencesToOrderItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :variations, foreign_key: true
  end
end
