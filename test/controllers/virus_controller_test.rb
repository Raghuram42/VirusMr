require 'test_helper'

class VirusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get virus_index_url
    assert_response :success
  end

  test "should get new" do
    get virus_new_url
    assert_response :success
  end

  test "should get create" do
    get virus_create_url
    assert_response :success
  end

end
