require 'test_helper'

class StudyGroupsControllerTest < ActionDispatch::IntegrationTest
  test "should get groups" do
    get study_groups_groups_url
    assert_response :success
  end

end
