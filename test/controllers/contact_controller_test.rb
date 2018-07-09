require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contact_index_url
    assert_response :success
  end

  test "should get edit" do
    get contact_edit_url
    assert_response :success
  end

  test "should get update" do
    get contact_update_url
    assert_response :success
  end

end
