require 'test_helper'

class CustomercompaniesControllerTest < ActionController::TestCase
  setup do
    @customercompany = customercompanies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customercompanies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customercompany" do
    assert_difference('Customercompany.count') do
      post :create, :customercompany => @customercompany.attributes
    end

    assert_redirected_to customercompany_path(assigns(:customercompany))
  end

  test "should show customercompany" do
    get :show, :id => @customercompany.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @customercompany.to_param
    assert_response :success
  end

  test "should update customercompany" do
    put :update, :id => @customercompany.to_param, :customercompany => @customercompany.attributes
    assert_redirected_to customercompany_path(assigns(:customercompany))
  end

  test "should destroy customercompany" do
    assert_difference('Customercompany.count', -1) do
      delete :destroy, :id => @customercompany.to_param
    end

    assert_redirected_to customercompanies_path
  end
end
