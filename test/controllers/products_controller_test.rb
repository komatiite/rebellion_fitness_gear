require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get products_index_url
    assert_response :success
  end

  test "should get view" do
    get products_view_url
    assert_response :success
  end

  test "should get add" do
    get products_add_url
    assert_response :success
  end

  test "should get discard" do
    get products_discard_url
    assert_response :success
  end

  test "should get buy" do
    get products_buy_url
    assert_response :success
  end

end
