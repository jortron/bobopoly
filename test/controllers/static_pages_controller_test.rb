require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Bobopoly"
  end

  test "should get profile" do
    get :profile
    assert_response :success
    assert_select "title", "Bobopoly"
  end

  test "should get games" do
    get :games
    assert_response :success
    assert_select "title", "Bobopoly"
  end

  test "should get venues" do
    get :venues
    assert_response :success
    assert_select "title", "Bobopoly"
  end

end
