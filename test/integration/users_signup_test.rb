require 'test_helper'

class TutorsSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get tutorsignup_path
    assert_no_difference 'Tutor.count' do
      post tutor_path, params: { tutor: { name:  "",
                                         email: "user@invalid",
                                         password:              "foo",
                                         password_confirmation: "bar" } }
    end
    assert_template 'tutor/new'
  end
end
