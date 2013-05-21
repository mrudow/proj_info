require 'test_helper'

class CisControllerTest < ActionController::TestCase
  setup do
    @ci = cis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ci" do
    assert_difference('Ci.count') do
      post :create, ci: {  }
    end

    assert_redirected_to ci_path(assigns(:ci))
  end

  test "should show ci" do
    get :show, id: @ci
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ci
    assert_response :success
  end

  test "should update ci" do
    put :update, id: @ci, ci: {  }
    assert_redirected_to ci_path(assigns(:ci))
  end

  test "should destroy ci" do
    assert_difference('Ci.count', -1) do
      delete :destroy, id: @ci
    end

    assert_redirected_to cis_path
  end
end
