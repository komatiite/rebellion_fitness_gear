require 'test_helper'

class ProductOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get product_orders_create_url
    assert_response :success
  end

  test "should get update" do
    get product_orders_update_url
    assert_response :success
  end

  test "should get destroy" do
    get product_orders_destroy_url
    assert_response :success
  end

end
