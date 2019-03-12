require 'test_helper'

class PlacesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get places_create_url
    assert_response :success
  end

  test "should get read" do
    get places_read_url
    assert_response :success
  end

  test "should get update" do
    get places_update_url
    assert_response :success
  end

  test "should get delete" do
    get places_delete_url
    assert_response :success
  end

end
