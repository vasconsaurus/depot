require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit store_index_url

    click_on 'Add to Cart', match: :first

    click_on 'Checkout'

    fill_in "order_address", with: @order.address
    fill_in "Email", with: @order.email
    fill_in "Name", with: @order.name
    select 'Check', from: 'order_pay_type'
    click_on "Place Order"

    assert_text "Thank you for your order"
  end

  # test "updating a Order" do
  #   visit orders_url
  #   click_on "Edit", match: :first

  #   fill_in "order_address", with: @order.address
  #   fill_in "Email", with: @order.email
  #   fill_in "Name", with: @order.name
  #   fill_in "Pay type", with: @order.pay_type
  #   click_on "Update Order"

  #   assert_text "Order was successfully updated"
  #   click_on "Back"
  # end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end

  test "check routing number" do
    visit store_index_url

    click_on 'Add to Cart', match: :first

    click_on 'Checkout'

    fill_in 'order_name', with: 'Dave Thomas'
    fill_in 'order_address', with: '123 Main Street'
    fill_in 'order_email', with: 'test@test.org'

    assert_no_selector "#order_routing_number"

    select 'Check', from: 'order_pay_type'

    assert_selector "#order_routing_number"
  end
end
