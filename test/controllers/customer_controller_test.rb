require "test_helper"

class CustomerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get customer_create_url
    assert_response :success
  end

  test "should get update" do
    get customer_update_url
    assert_response :success
  end

  test "should get show" do
    get customer_show_url
    assert_response :success
  end

  test "should get delete" do
    get customer_delete_url
    assert_response :success
  end
end
