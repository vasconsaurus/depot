class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end

  def decrement_quantity
    if quantity > 1
      decrement!(:quantity)
    end
  end
end
