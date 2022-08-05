require "test_helper"

class BranchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get branches_index_url
    assert_response :success
  end

  test "should get new" do
    get branches_new_url
    assert_response :success
  end

  test "should get create" do
    get branches_create_url
    assert_response :success
  end

  test "should get update" do
    get branches_update_url
    assert_response :success
  end
end
