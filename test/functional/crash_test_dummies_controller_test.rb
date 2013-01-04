require 'test_helper'

class CrashTestDummiesControllerTest < ActionController::TestCase
  setup do
    @crash_test_dummy = crash_test_dummies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:crash_test_dummies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create crash_test_dummy" do
    assert_difference('CrashTestDummy.count') do
      post :create, crash_test_dummy: { height: @crash_test_dummy.height, name: @crash_test_dummy.name, test_id: @crash_test_dummy.test_id, weight: @crash_test_dummy.weight }
    end

    assert_redirected_to crash_test_dummy_path(assigns(:crash_test_dummy))
  end

  test "should show crash_test_dummy" do
    get :show, id: @crash_test_dummy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @crash_test_dummy
    assert_response :success
  end

  test "should update crash_test_dummy" do
    put :update, id: @crash_test_dummy, crash_test_dummy: { height: @crash_test_dummy.height, name: @crash_test_dummy.name, test_id: @crash_test_dummy.test_id, weight: @crash_test_dummy.weight }
    assert_redirected_to crash_test_dummy_path(assigns(:crash_test_dummy))
  end

  test "should destroy crash_test_dummy" do
    assert_difference('CrashTestDummy.count', -1) do
      delete :destroy, id: @crash_test_dummy
    end

    assert_redirected_to crash_test_dummies_path
  end
end
