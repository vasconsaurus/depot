class StoreController < ApplicationController
  include IncrementCounter
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    @count = increment_counter
  end
end
