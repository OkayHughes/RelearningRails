require 'test_helper'

class TemppostsControllerTest < ActionController::TestCase
  setup do
    @temppost = tempposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tempposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create temppost" do
    assert_difference('Temppost.count') do
      post :create, temppost: { text: @temppost.text, title: @temppost.title }
    end

    assert_redirected_to temppost_path(assigns(:temppost))
  end

  test "should show temppost" do
    get :show, id: @temppost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @temppost
    assert_response :success
  end

  test "should update temppost" do
    patch :update, id: @temppost, temppost: { text: @temppost.text, title: @temppost.title }
    assert_redirected_to temppost_path(assigns(:temppost))
  end

  test "should destroy temppost" do
    assert_difference('Temppost.count', -1) do
      delete :destroy, id: @temppost
    end

    assert_redirected_to tempposts_path
  end
end
