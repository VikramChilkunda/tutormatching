require 'test_helper'

class SubjectControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get subject_new_url
    assert_response :success
  end

end
