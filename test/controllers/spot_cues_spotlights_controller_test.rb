require 'test_helper'

class SpotCuesSpotlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spot_cues_spotlight = spot_cues_spotlights(:one)
  end

  test "should get index" do
    get spot_cues_spotlights_url
    assert_response :success
  end

  test "should get new" do
    get new_spot_cues_spotlight_url
    assert_response :success
  end

  test "should create spot_cues_spotlight" do
    assert_difference('SpotCuesSpotlight.count') do
      post spot_cues_spotlights_url, params: { spot_cues_spotlight: { action: @spot_cues_spotlight.action, intensity: @spot_cues_spotlight.intensity, notes: @spot_cues_spotlight.notes, size: @spot_cues_spotlight.size, spot_cue_id: @spot_cues_spotlight.spot_cue_id, spotlight_id: @spot_cues_spotlight.spotlight_id, time: @spot_cues_spotlight.time } }
    end

    assert_redirected_to spot_cues_spotlight_url(SpotCuesSpotlight.last)
  end

  test "should show spot_cues_spotlight" do
    get spot_cues_spotlight_url(@spot_cues_spotlight)
    assert_response :success
  end

  test "should get edit" do
    get edit_spot_cues_spotlight_url(@spot_cues_spotlight)
    assert_response :success
  end

  test "should update spot_cues_spotlight" do
    patch spot_cues_spotlight_url(@spot_cues_spotlight), params: { spot_cues_spotlight: { action: @spot_cues_spotlight.action, intensity: @spot_cues_spotlight.intensity, notes: @spot_cues_spotlight.notes, size: @spot_cues_spotlight.size, spot_cue_id: @spot_cues_spotlight.spot_cue_id, spotlight_id: @spot_cues_spotlight.spotlight_id, time: @spot_cues_spotlight.time } }
    assert_redirected_to spot_cues_spotlight_url(@spot_cues_spotlight)
  end

  test "should destroy spot_cues_spotlight" do
    assert_difference('SpotCuesSpotlight.count', -1) do
      delete spot_cues_spotlight_url(@spot_cues_spotlight)
    end

    assert_redirected_to spot_cues_spotlights_url
  end
end
