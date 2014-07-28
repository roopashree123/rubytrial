require 'test_helper'

class OnesControllerTest < ActionController::TestCase
  setup do
    @one = ones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create one" do
    assert_difference('One.count') do
      post :create, one: { name: @one.name, phone: @one.phone }
    end

    assert_redirected_to one_path(assigns(:one))
  end

  test "should show one" do
    get :show, id: @one
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @one
    assert_response :success
  end

  test "should update one" do
    put :update, id: @one, one: { name: @one.name, phone: @one.phone }
    assert_redirected_to one_path(assigns(:one))
  end

  test "should destroy one" do
    assert_difference('One.count', -1) do
      delete :destroy, id: @one
    end

    assert_redirected_to ones_path
  end
end
