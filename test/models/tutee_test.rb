require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @tutee = Tutee.new(name: "Example Tutee", password: "password", password_confirmation: "password")
  end
  test "should be valid" do
    assert @tutee.valid?
  end
  test "name should be present" do
    @tutee.name = "   "
    assert_not @tutee.valid?
  end
  test "name should not be too long" do
    @tutee.name = "a"*51
    assert_not @tutee.valid?
  end
  # test "email validation should accept valid addresses" do
  #   valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
  #                        first.last@foo.jp alice+bob@baz.cn]
  #   valid_addresses.each do |valid_address|
  #     @tutee.email = valid_address
  #     assert @tutee.valid?, "#{valid_address.inspect} should be valid"
  #   end
  # end  
  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@gusd.net user@stu.gusd.net USER@gusd.NET USER@stu.gusd.NET]
    valid_addresses.each do |valid_address|
      @tutee.email = valid_address
      assert @tutee.valid?, "#{valid_address.inspect} should be valid"
    end
  end
  
  test "email validation should reject invalid addresses" do
    invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
                           foo@bar_baz.com foo@bar+baz.com foo@bar..com]
    invalid_addresses.each do |invalid_address|
      @tutee.email = invalid_address
      assert_not @tutee.valid?, "#{invalid_address.inspect} should be invalid"
    end
  end
  test "password should be present (nonblank)" do
    @tutee.password = @tutee.password_confirmation = " " * 6
    assert_not @tutee.valid?
  end

  test "password should have a minimum length" do
    @tutee.password = @tutee.password_confirmation = "a" * 5
    assert_not @tutee.valid?
  end

end
