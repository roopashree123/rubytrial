require 'test_helper'

class MosttwosControllerTest < ActionController::TestCase
  setup do
    @mosttwo = mosttwos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mosttwos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mosttwo" do
    assert_difference('Mosttwo.count') do
      post :create, mosttwo: { phone: @mosttwo.phone }
    end

    assert_redirected_to mosttwo_path(assigns(:mosttwo))
  end

  test "should show mosttwo" do
    get :show, id: @mosttwo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mosttwo
    assert_response :success
  end

  test "should update mosttwo" do
    put :update, id: @mosttwo, mosttwo: { phone: @mosttwo.phone }
    assert_redirected_to mosttwo_path(assigns(:mosttwo))
  end

  test "should destroy mosttwo" do
    assert_difference('Mosttwo.count', -1) do
      delete :destroy, id: @mosttwo
    end

    assert_redirected_to mosttwos_path
  end
end
