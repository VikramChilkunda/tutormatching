require 'test_helper'

class TutorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tutorsignup_path
    assert_response :success
  end

end
