require 'test_helper'

class TutorRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tutor_requests_new_url
    assert_response :success
  end

end
