require 'test_helper'

class CvstudentsControllerTest < ActionDispatch::IntegrationTest
  test "should get import_from_excel" do
    get cvstudents_import_from_excel_url
    assert_response :success
  end

end
