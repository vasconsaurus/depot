require "application_system_test_case"

class CartsTest < ApplicationSystemTestCase
  setup do
    @cart = carts(:one)
  end

  test "visiting the index" do
    visit carts_url
    assert_selector "h1", text: "Carts"
  end

  test "creating a Cart" do
    visit store_index_url

    click_on "Add to Cart", match: :first

    assert_text "Your Pragmatic Cart"
  end

  # test "updating a Cart" do
  #   visit carts_url
  #   click_on "Edit", match: :first

  #   click_on "Update Cart"

  #   assert_text "Cart was successfully updated"
  #   click_on "Back"
  # end

  test "destroying a Cart" do
    visit store_index_url

    click_on "Add to Cart", match: :first

    page.accept_confirm do
      click_on "Empty cart", match: :first
    end

    assert_no_text "Your Pragmatic Cart"
  end
end
