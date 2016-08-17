require 'test_helper'

class TrakingControllerTest < ActionController::TestCase
  test "should get students" do
    get :students
    assert_response :success
  end

end
