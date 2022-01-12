require 'test_helper'

class TutorTest < ActiveSupport::TestCase

  def setup
    @tutor = Tutor.new(name: "Example User", email: "user@example.com", id_num:123456, password: "foobar", password_confirmation: "foobar")
  end

  test "should be valid" do
    assert @tutor.valid?
  end

  test "name should be present" do
    @tutor.name = ""
    assert_not @tutor.valid?
  end

  test "email should be present" do
    @tutor.email = "     "
    assert_not @tutor.valid?
  end
  
  test "id should be present" do
    @tutor.id_num = ""
    assert_not @tutor.valid?
  end
  
  test "name should not be too long" do
    @tutor.name = "a" * 51
    assert_not @tutor.valid?
  end
  
  test "email should not be too long" do
    @tutor.email = "a" * 244 + "@example.com"
    assert_not @tutor.valid?
  end
 
  test "ID should be 6 digits" do
    @tutor.id_num = "1234567"
    assert_not @tutor.valid?
  end
  
   test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @tutor.email = valid_address
      assert @tutor.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com foo@bar..com]
    invalid_addresses.each do |invalid_address|
      @tutor.email = invalid_address
      assert_not @tutor.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  
  test "email addresses should be unique" do
    duplicate_tutor = @tutor.dup
    duplicate_tutor.email = @tutor.email.upcase
    @tutor.save
    assert_not duplicate_tutor.valid?
  end
  
  test "password should be present (nonblank)" do
    @tutor.password = @tutor.password_confirmation = " " * 6
    assert_not @tutor.valid?
  end

  test "password should have a minimum length" do
    @tutor.password = @tutor.password_confirmation = "a" * 5
    assert_not @tutor.valid?
  end
end