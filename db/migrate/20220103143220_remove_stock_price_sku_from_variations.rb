class RemoveStockPriceSkuFromVariations < ActiveRecord::Migration[5.2]
  def change
    remove_column :variations, :stock, :integer
    remove_column :variations, :price, :decimal
    remove_column :variations, :sku, :string
  end
end
