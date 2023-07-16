require "test_helper"

class NewWelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get new_welcome_index_url
    assert_response :success
  end
end
