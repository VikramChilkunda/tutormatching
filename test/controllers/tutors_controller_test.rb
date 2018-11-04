require 'test_helper'

class TutorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tutors_tutorsignup_url
    assert_response :success
  end

end
