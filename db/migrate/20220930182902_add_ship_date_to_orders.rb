class AddShipDateToOrders < ActiveRecord::Migration[6.0]
  def up
    add_column :orders, :ship_date, :datetime, default: nil
  end

  def down
    remove_column :orders, :ship_date
  end
end
