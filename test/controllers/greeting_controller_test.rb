require 'test_helper'

class GreetingControllerTest < ActionController::TestCase
  test "should get announcements" do
    get :announcements
    assert_response :success
  end

end
