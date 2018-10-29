require 'test_helper'

class TuteesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tutee_signup_path
    assert_response :success
  end


end
