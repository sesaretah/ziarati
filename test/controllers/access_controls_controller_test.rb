require 'test_helper'

class AccessControlsControllerTest < ActionController::TestCase
  setup do
    @access_control = access_controls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:access_controls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create access_control" do
    assert_difference('AccessControl.count') do
      post :create, access_control: { ability_to_assign_roles: @access_control.ability_to_assign_roles, ability_to_change_categories: @access_control.ability_to_change_categories, ability_to_change_faqs: @access_control.ability_to_change_faqs, ability_to_change_roles: @access_control.ability_to_change_roles, ability_to_post_ads: @access_control.ability_to_post_ads, ability_to_post_blog: @access_control.ability_to_post_blog, ability_to_verify_ads: @access_control.ability_to_verify_ads, role_id: @access_control.role_id, uuid: @access_control.uuid }
    end

    assert_redirected_to access_control_path(assigns(:access_control))
  end

  test "should show access_control" do
    get :show, id: @access_control
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @access_control
    assert_response :success
  end

  test "should update access_control" do
    patch :update, id: @access_control, access_control: { ability_to_assign_roles: @access_control.ability_to_assign_roles, ability_to_change_categories: @access_control.ability_to_change_categories, ability_to_change_faqs: @access_control.ability_to_change_faqs, ability_to_change_roles: @access_control.ability_to_change_roles, ability_to_post_ads: @access_control.ability_to_post_ads, ability_to_post_blog: @access_control.ability_to_post_blog, ability_to_verify_ads: @access_control.ability_to_verify_ads, role_id: @access_control.role_id, uuid: @access_control.uuid }
    assert_redirected_to access_control_path(assigns(:access_control))
  end

  test "should destroy access_control" do
    assert_difference('AccessControl.count', -1) do
      delete :destroy, id: @access_control
    end

    assert_redirected_to access_controls_path
  end
end
