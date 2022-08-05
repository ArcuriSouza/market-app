require "test_helper"

class InvoiceControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get invoice_index_url
    assert_response :success
  end

  test "should get new" do
    get invoice_new_url
    assert_response :success
  end

  test "should get create" do
    get invoice_create_url
    assert_response :success
  end

  test "should get update" do
    get invoice_update_url
    assert_response :success
  end
end
