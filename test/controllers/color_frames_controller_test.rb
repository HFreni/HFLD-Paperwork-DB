require 'test_helper'

class ColorFramesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @color_frame = color_frames(:one)
  end

  test "should get index" do
    get color_frames_url
    assert_response :success
  end

  test "should get new" do
    get new_color_frame_url
    assert_response :success
  end

  test "should create color_frame" do
    assert_difference('ColorFrame.count') do
      post color_frames_url, params: { color_frame: { color_id: @color_frame.color_id, frame_position: @color_frame.frame_position, spotlight_id: @color_frame.spotlight_id } }
    end

    assert_redirected_to color_frame_url(ColorFrame.last)
  end

  test "should show color_frame" do
    get color_frame_url(@color_frame)
    assert_response :success
  end

  test "should get edit" do
    get edit_color_frame_url(@color_frame)
    assert_response :success
  end

  test "should update color_frame" do
    patch color_frame_url(@color_frame), params: { color_frame: { color_id: @color_frame.color_id, frame_position: @color_frame.frame_position, spotlight_id: @color_frame.spotlight_id } }
    assert_redirected_to color_frame_url(@color_frame)
  end

  test "should destroy color_frame" do
    assert_difference('ColorFrame.count', -1) do
      delete color_frame_url(@color_frame)
    end

    assert_redirected_to color_frames_url
  end
end
