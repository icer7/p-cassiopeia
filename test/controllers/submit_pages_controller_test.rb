require 'test_helper'

class SubmitPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get submit_pages_home_url
    assert_response :success
  end

end
