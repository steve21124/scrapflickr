require 'test_helper'

class ScrapXmlsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scrap_xmls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scrap_xml" do
    assert_difference('ScrapXml.count') do
      post :create, :scrap_xml => { }
    end

    assert_redirected_to scrap_xml_path(assigns(:scrap_xml))
  end

  test "should show scrap_xml" do
    get :show, :id => scrap_xmls(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => scrap_xmls(:one).to_param
    assert_response :success
  end

  test "should update scrap_xml" do
    put :update, :id => scrap_xmls(:one).to_param, :scrap_xml => { }
    assert_redirected_to scrap_xml_path(assigns(:scrap_xml))
  end

  test "should destroy scrap_xml" do
    assert_difference('ScrapXml.count', -1) do
      delete :destroy, :id => scrap_xmls(:one).to_param
    end

    assert_redirected_to scrap_xmls_path
  end
end
