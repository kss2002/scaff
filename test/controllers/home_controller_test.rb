# test/controllers/home_controller_test.rb
require "test_helper"

# CI modify
class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get root_url  # home_index_url 대신 root_url 사용
    assert_response :success
  end
end