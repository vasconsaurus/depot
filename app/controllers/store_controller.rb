class StoreController < ApplicationController
  include IncrementCounter

  def index
    @products = Product.order(:title)
    @count = increment_counter
  end
end
