require 'test_helper'

class VendersControllerTest < ActionController::TestCase
  setup do
    @vender = venders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:venders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vender" do
    assert_difference('Vender.count') do
      post :create, vender: { name: @vender.name }
    end

    assert_redirected_to vender_path(assigns(:vender))
  end

  test "should show vender" do
    get :show, id: @vender
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vender
    assert_response :success
  end

  test "should update vender" do
    patch :update, id: @vender, vender: { name: @vender.name }
    assert_redirected_to vender_path(assigns(:vender))
  end

  test "should destroy vender" do
    assert_difference('Vender.count', -1) do
      delete :destroy, id: @vender
    end

    assert_redirected_to venders_path
  end
end
