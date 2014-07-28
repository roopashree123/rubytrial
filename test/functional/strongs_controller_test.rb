require 'test_helper'

class StrongsControllerTest < ActionController::TestCase
  setup do
    @strong = strongs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:strongs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create strong" do
    assert_difference('Strong.count') do
      post :create, strong: { name: @strong.name, phone: @strong.phone }
    end

    assert_redirected_to strong_path(assigns(:strong))
  end

  test "should show strong" do
    get :show, id: @strong
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @strong
    assert_response :success
  end

  test "should update strong" do
    put :update, id: @strong, strong: { name: @strong.name, phone: @strong.phone }
    assert_redirected_to strong_path(assigns(:strong))
  end

  test "should destroy strong" do
    assert_difference('Strong.count', -1) do
      delete :destroy, id: @strong
    end

    assert_redirected_to strongs_path
  end
end
