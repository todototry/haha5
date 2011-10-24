require 'test_helper'

class DiseasedescsControllerTest < ActionController::TestCase
  setup do
    @diseasedesc = diseasedescs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diseasedescs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diseasedesc" do
    assert_difference('Diseasedesc.count') do
      post :create, :diseasedesc => @diseasedesc.attributes
    end

    assert_redirected_to diseasedesc_path(assigns(:diseasedesc))
  end

  test "should show diseasedesc" do
    get :show, :id => @diseasedesc.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @diseasedesc.to_param
    assert_response :success
  end

  test "should update diseasedesc" do
    put :update, :id => @diseasedesc.to_param, :diseasedesc => @diseasedesc.attributes
    assert_redirected_to diseasedesc_path(assigns(:diseasedesc))
  end

  test "should destroy diseasedesc" do
    assert_difference('Diseasedesc.count', -1) do
      delete :destroy, :id => @diseasedesc.to_param
    end

    assert_redirected_to diseasedescs_path
  end
end
