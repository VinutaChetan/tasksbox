require 'test_helper'

class Transaction1ControllerTest < ActionController::TestCase
  test "should get product" do
    get :product
    assert_response :success
  end

end
