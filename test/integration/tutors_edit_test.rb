require 'test_helper'

class TutorsEditTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @tutor = tutors(:adarsh)
  end

  test "unsuccessful edit" do
    get edit_person_path(@tutor)
    assert_template 'people/edit'
    patch person_path(@tutor), params: { person: { name:  "",
                                              email: "foo@invalid",
                                              password:              "foo",
                                              password_confirmation: "bar" } }

    assert_template 'people/edit'
  end
end
