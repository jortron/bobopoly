require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
<<<<<<< HEAD
    @user = User.new(name: "Example User", email: "user@example.com")
<<<<<<< HEAD
                      password: "foobar", password_confirmation: "foobar")
=======
>>>>>>> chapter7
=======
    @user = User.new(first_name: "Example User", last_name: "Sample", email: "user@example.com", password: "foobar", password_confirmation: "foobar")
>>>>>>> c5000881056d850ee5d28b0bf699f65b21f18680
  end

  test "should be valid" do
    assert @user.valid?
  end

<<<<<<< HEAD
    test "First name should be present" do
    @user.first_name = "     "
    assert_not @user.valid?
  end

  test "Last name should be present" do
=======
  test "name should be present" do
    @user.first_name = "     "
>>>>>>> chapter7
    @user.last_name = "     "
    assert_not @user.valid?
  end

 

	test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

  test "name should not be too long" do
    @user.first_name = "a" * 51
    @user.last_name = "a" * 51
    assert_not @user.valid?
  end

  test "email should not be too long" do
    @user.email = "a" * 244 + "@example.com"
    assert_not @user.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @user.email = valid_address
      assert @user.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  test "email addresses should be unique" do
    duplicate_user = @user.dup
    duplicate_user.email = @user.email.upcase
    @user.save
    assert_not duplicate_user.valid?
  end
<<<<<<< HEAD
  
  test "password should be present (nonblank)" do
    @user.password = @user.password_confirmation = " " * 6
    assert_not @user.valid?
  end

  test "password should have a minimum length" do
    @user.password = @user.password_confirmation = "a" * 5
    assert_not @user.valid?
  end
=======

>>>>>>> chapter7
end