class AddStockToVariation < ActiveRecord::Migration[5.2]
  def change
    add_column :variations, :stock, :integer
  end
end
