require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get user_page" do
    get user_user_page_url
    assert_response :success
  end

end
