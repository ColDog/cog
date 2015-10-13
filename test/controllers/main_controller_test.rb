require 'test_helper'

class MainControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get technology" do
    get :technology
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get get_started" do
    get :get_started
    assert_response :success
  end

end
