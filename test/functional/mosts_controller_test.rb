require 'test_helper'

class MostsControllerTest < ActionController::TestCase
  setup do
    @most = mosts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mosts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create most" do
    assert_difference('Most.count') do
      post :create, most: { phone: @most.phone }
    end

    assert_redirected_to most_path(assigns(:most))
  end

  test "should show most" do
    get :show, id: @most
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @most
    assert_response :success
  end

  test "should update most" do
    put :update, id: @most, most: { phone: @most.phone }
    assert_redirected_to most_path(assigns(:most))
  end

  test "should destroy most" do
    assert_difference('Most.count', -1) do
      delete :destroy, id: @most
    end

    assert_redirected_to mosts_path
  end
end
