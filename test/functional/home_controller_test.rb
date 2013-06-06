require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "dashboard should be unavailable to users not logged in" do
    get :dashboard
    assert_redirected_to new_user_session_path
    #assert_response :success
  end

  test "dashboard should be available to logged in users" do 
    sign_in users(:one)
    get :dashboard
    assert_response :success
  end

end
