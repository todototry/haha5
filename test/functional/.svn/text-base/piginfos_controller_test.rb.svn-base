require 'test_helper'

class PiginfosControllerTest < ActionController::TestCase
  setup do
    @piginfo = piginfos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piginfos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create piginfo" do
    assert_difference('Piginfo.count') do
      post :create, :piginfo => @piginfo.attributes
    end

    assert_redirected_to piginfo_path(assigns(:piginfo))
  end

  test "should show piginfo" do
    get :show, :id => @piginfo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @piginfo.to_param
    assert_response :success
  end

  test "should update piginfo" do
    put :update, :id => @piginfo.to_param, :piginfo => @piginfo.attributes
    assert_redirected_to piginfo_path(assigns(:piginfo))
  end

  test "should destroy piginfo" do
    assert_difference('Piginfo.count', -1) do
      delete :destroy, :id => @piginfo.to_param
    end

    assert_redirected_to piginfos_path
  end
end
