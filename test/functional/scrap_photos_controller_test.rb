require 'test_helper'

class ScrapPhotosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scrap_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scrap_photo" do
    assert_difference('ScrapPhoto.count') do
      post :create, :scrap_photo => { }
    end

    assert_redirected_to scrap_photo_path(assigns(:scrap_photo))
  end

  test "should show scrap_photo" do
    get :show, :id => scrap_photos(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => scrap_photos(:one).to_param
    assert_response :success
  end

  test "should update scrap_photo" do
    put :update, :id => scrap_photos(:one).to_param, :scrap_photo => { }
    assert_redirected_to scrap_photo_path(assigns(:scrap_photo))
  end

  test "should destroy scrap_photo" do
    assert_difference('ScrapPhoto.count', -1) do
      delete :destroy, :id => scrap_photos(:one).to_param
    end

    assert_redirected_to scrap_photos_path
  end
end
