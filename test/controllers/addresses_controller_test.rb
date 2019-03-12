require 'test_helper'

class AddressesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get addresses_create_url
    assert_response :success
  end

  test "should get read" do
    get addresses_read_url
    assert_response :success
  end

  test "should get update" do
    get addresses_update_url
    assert_response :success
  end

  test "should get delete" do
    get addresses_delete_url
    assert_response :success
  end

end
