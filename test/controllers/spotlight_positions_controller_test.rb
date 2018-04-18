require 'test_helper'

class SpotlightPositionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spotlight_position = spotlight_positions(:one)
  end

  test "should get index" do
    get spotlight_positions_url
    assert_response :success
  end

  test "should get new" do
    get new_spotlight_position_url
    assert_response :success
  end

  test "should create spotlight_position" do
    assert_difference('SpotlightPosition.count') do
      post spotlight_positions_url, params: { spotlight_position: { position_name: @spotlight_position.position_name } }
    end

    assert_redirected_to spotlight_position_url(SpotlightPosition.last)
  end

  test "should show spotlight_position" do
    get spotlight_position_url(@spotlight_position)
    assert_response :success
  end

  test "should get edit" do
    get edit_spotlight_position_url(@spotlight_position)
    assert_response :success
  end

  test "should update spotlight_position" do
    patch spotlight_position_url(@spotlight_position), params: { spotlight_position: { position_name: @spotlight_position.position_name } }
    assert_redirected_to spotlight_position_url(@spotlight_position)
  end

  test "should destroy spotlight_position" do
    assert_difference('SpotlightPosition.count', -1) do
      delete spotlight_position_url(@spotlight_position)
    end

    assert_redirected_to spotlight_positions_url
  end
end
