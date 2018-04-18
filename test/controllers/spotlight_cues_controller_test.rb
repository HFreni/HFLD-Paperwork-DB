require 'test_helper'

class SpotlightCuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spotlight_cue = spotlight_cues(:one)
  end

  test "should get index" do
    get spotlight_cues_url
    assert_response :success
  end

  test "should get new" do
    get new_spotlight_cue_url
    assert_response :success
  end

  test "should create spotlight_cue" do
    assert_difference('SpotlightCue.count') do
      post spotlight_cues_url, params: { spotlight_cue: { action_id: @spotlight_cue.action_id, color_id: @spotlight_cue.color_id, description: @spotlight_cue.description, intensity_id: @spotlight_cue.intensity_id, size_id: @spotlight_cue.size_id, time: @spotlight_cue.time } }
    end

    assert_redirected_to spotlight_cue_url(SpotlightCue.last)
  end

  test "should show spotlight_cue" do
    get spotlight_cue_url(@spotlight_cue)
    assert_response :success
  end

  test "should get edit" do
    get edit_spotlight_cue_url(@spotlight_cue)
    assert_response :success
  end

  test "should update spotlight_cue" do
    patch spotlight_cue_url(@spotlight_cue), params: { spotlight_cue: { action_id: @spotlight_cue.action_id, color_id: @spotlight_cue.color_id, description: @spotlight_cue.description, intensity_id: @spotlight_cue.intensity_id, size_id: @spotlight_cue.size_id, time: @spotlight_cue.time } }
    assert_redirected_to spotlight_cue_url(@spotlight_cue)
  end

  test "should destroy spotlight_cue" do
    assert_difference('SpotlightCue.count', -1) do
      delete spotlight_cue_url(@spotlight_cue)
    end

    assert_redirected_to spotlight_cues_url
  end
end
