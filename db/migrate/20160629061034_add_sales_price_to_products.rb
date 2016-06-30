class AddSalesPriceToProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :sale_price, :decimal, :default => 0.0
  end
end
