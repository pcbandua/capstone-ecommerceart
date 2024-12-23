class ChangePriceToDecimal < ActiveRecord::Migration[7.1]
  def change
    change_column :orders, :subtotal, :decimal, precision: 9, scale: 2
    change_column :orders, :tax, :decimal, precision: 9, scale: 2
    change_column :orders, :total, :decimal, precision: 9, scale: 2
  end
end
