require 'test_helper'

class TaskControllerTest < ActionController::TestCase
  test "should get lists" do
    get :lists
    assert_response :success
  end

end
