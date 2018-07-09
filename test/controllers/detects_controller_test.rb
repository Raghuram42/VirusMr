require 'test_helper'

class DetectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get detects_index_url
    assert_response :success
  end

  test "should get new" do
    get detects_new_url
    assert_response :success
  end

  test "should get create" do
    get detects_create_url
    assert_response :success
  end

end
