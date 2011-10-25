require 'test_helper'

class BlahsControllerTest < ActionController::TestCase
  setup do
    @blah = blahs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blahs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blah" do
    assert_difference('Blah.count') do
      post :create, :blah => @blah.attributes
    end

    assert_redirected_to blah_path(assigns(:blah))
  end

  test "should show blah" do
    get :show, :id => @blah.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @blah.to_param
    assert_response :success
  end

  test "should update blah" do
    put :update, :id => @blah.to_param, :blah => @blah.attributes
    assert_redirected_to blah_path(assigns(:blah))
  end

  test "should destroy blah" do
    assert_difference('Blah.count', -1) do
      delete :destroy, :id => @blah.to_param
    end

    assert_redirected_to blahs_path
  end
end
