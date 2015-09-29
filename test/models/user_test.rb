require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(name: "Example User", email: "user@example.com")
  end

  test "should be valid" do
    assert @user.valid?
  end

    test "First name should be present" do
    @user.first_name = "     "
    assert_not @user.valid?
  end

  test "Last name should be present" do
    @user.last_name = "     "
    assert_not @user.valid?
  end

  test "Handle should be present" do
    @user.handle = "     "
    assert_not @user.valid?
  end

	test "email should be present" do
    @user.email = "     "
    assert_not @user.valid?
  end

end