require 'test_helper'

class TutorsEditTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  def setup
    @tutor = tutors(:adarsh)
  end

  test "unsuccessful edit" do
    log_in_as(@tutor)
    get edit_person_path(@tutor)
    assert_template 'people/edit'
    patch person_path(@tutor), params: { person: { name:  "",
                                              email: "foo@invalid",
                                              password:              "foo",
                                              password_confirmation: "bar" } }

    assert_template 'people/edit'
  end
  
  test "successful edit" do
    log_in_as(@person)
    get edit_tutor_path(@person)
    assert_template 'people/edit'
    name  = "Foo Bar"
    email = "foo@bar.com"
    patch user_path(@person), params: { tutor: { name:  name,
                                              email: email,
                                              password:              "",
                                              password_confirmation: "" } }
    assert_not flash.empty?
    assert_redirected_to @person
    @person.reload
    assert_equal name,  @person.name
    assert_equal email, @person.email
  end
end
