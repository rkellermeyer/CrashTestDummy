require 'test_helper'

class CrashTestsControllerTest < ActionController::TestCase
  setup do
    @crash_test = crash_tests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crash_tests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crash_test" do
    assert_difference('CrashTest.count') do
      post :create, crash_test: { name: @crash_test.name }
    end

    assert_redirected_to crash_test_path(assigns(:crash_test))
  end

  test "should show crash_test" do
    get :show, id: @crash_test
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crash_test
    assert_response :success
  end

  test "should update crash_test" do
    put :update, id: @crash_test, crash_test: { name: @crash_test.name }
    assert_redirected_to crash_test_path(assigns(:crash_test))
  end

  test "should destroy crash_test" do
    assert_difference('CrashTest.count', -1) do
      delete :destroy, id: @crash_test
    end

    assert_redirected_to crash_tests_path
  end
end
