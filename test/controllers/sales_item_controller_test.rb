require "test_helper"

class SalesItemControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sales_item_index_url
    assert_response :success
  end

  test "should get new" do
    get sales_item_new_url
    assert_response :success
  end

  test "should get create" do
    get sales_item_create_url
    assert_response :success
  end

  test "should get update" do
    get sales_item_update_url
    assert_response :success
  end
end
