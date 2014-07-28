require 'test_helper'

class NameControllerTest < ActionController::TestCase
  test "should get hello" do
    get :hello
    assert_response :success
  end

  test "should get hi" do
    get :hi
    assert_response :success
  end

end
