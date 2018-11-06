require 'test_helper'

class TuteesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tuteesignup_path
    assert_response :success
  end


end
