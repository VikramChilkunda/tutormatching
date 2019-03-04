require 'test_helper'

class TutorsSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get tutorsignup_path
     assert_select 'form[action="/tutorsignup"]'
    assert_no_difference 'Tutor.count' do
      post tutors_path, params: { tutor: { name:  "",
                                         email: "user@invalid",
                                         id_num: "123",
                                         id: "-1",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
    end
    #follow_redirect!
    assert_template 'tutors/new'
    assert_select 'form[action="/tutorsignup"]'
    assert is_logged_in?
  end
end
