require "test_helper"

class GenderControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gender_index_url
    assert_response :success
  end

  test "should get new" do
    get gender_new_url
    assert_response :success
  end

  test "should get create" do
    get gender_create_url
    assert_response :success
  end

  test "should get update" do
    get gender_update_url
    assert_response :success
  end
end
