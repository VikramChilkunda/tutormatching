require 'test_helper'

class TutorsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @person = tutors(:adarsh)
    @other_person = tutors(:adarsh)
  end
  
  test "should get new" do
    get tutorsignup_path
    assert_response :success
  end
  
  test "should redirect edit when not logged in" do
    log_in_as(@other_person)
    get edit_person_path(@person)
    assert_not flash.empty?
    assert_redirected_to login_url
  end

  test "should redirect update when not logged in" do
    log_in_as(@other_person)
    patch user_path(@person), params: { person: { name: @person.name,
                                              email: @person.email } }
    assert_not flash.empty?
    assert_redirected_to login_url
  end

end
