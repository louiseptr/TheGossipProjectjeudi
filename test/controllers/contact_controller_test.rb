require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get contact_show" do
    get contact_contact_show_url
    assert_response :success
  end

end
