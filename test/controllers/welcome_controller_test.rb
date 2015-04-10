require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get events" do
    get :events
    assert_response :success
  end

  test "should get music" do
    get :music
    assert_response :success
  end

  test "should get community" do
    get :community
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

end
