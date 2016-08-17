require 'test_helper'

class TransactionControllerTest < ActionController::TestCase
  test "should get category" do
    get :category
    assert_response :success
  end

end
