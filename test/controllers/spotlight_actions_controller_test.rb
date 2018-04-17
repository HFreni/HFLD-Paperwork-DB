require 'test_helper'

class SpotlightActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spotlight_action = spotlight_actions(:one)
  end

  test "should get index" do
    get spotlight_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_spotlight_action_url
    assert_response :success
  end

  test "should create spotlight_action" do
    assert_difference('SpotlightAction.count') do
      post spotlight_actions_url, params: { spotlight_action: { image: @spotlight_action.image, name: @spotlight_action.name } }
    end

    assert_redirected_to spotlight_action_url(SpotlightAction.last)
  end

  test "should show spotlight_action" do
    get spotlight_action_url(@spotlight_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_spotlight_action_url(@spotlight_action)
    assert_response :success
  end

  test "should update spotlight_action" do
    patch spotlight_action_url(@spotlight_action), params: { spotlight_action: { image: @spotlight_action.image, name: @spotlight_action.name } }
    assert_redirected_to spotlight_action_url(@spotlight_action)
  end

  test "should destroy spotlight_action" do
    assert_difference('SpotlightAction.count', -1) do
      delete spotlight_action_url(@spotlight_action)
    end

    assert_redirected_to spotlight_actions_url
  end
end
