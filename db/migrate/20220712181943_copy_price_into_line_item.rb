class CopyPriceIntoLineItem < ActiveRecord::Migration[6.0]
  def change
    LineItem.all.each do |item|
      item.price = item.product.price
      item.update!(price: item.product.price)
    end
  end
end
