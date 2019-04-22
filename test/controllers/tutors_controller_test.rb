require 'test_helper'

class TutorsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @person = tutors(:adarsh)
    @other_person = tutors(:archer)
  end
  
  test "should redirect index when not logged in" do
    get tutors_path
    assert_redirected_to login_url
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
  
  test "should redirect destroy when not logged in" do
    assert_no_difference 'Person.count' do
      delete person_path(@person)
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when logged in as a non-admin" do
    log_in_as(@person_user)
    assert_no_difference 'Person.count' do
      delete user_path(@person)
    end
    assert_redirected_to root_url
  end

end
