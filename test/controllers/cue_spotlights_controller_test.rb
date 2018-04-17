require 'test_helper'

class CueSpotlightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cue_spotlight = cue_spotlights(:one)
  end

  test "should get index" do
    get cue_spotlights_url
    assert_response :success
  end

  test "should get new" do
    get new_cue_spotlight_url
    assert_response :success
  end

  test "should create cue_spotlight" do
    assert_difference('CueSpotlight.count') do
      post cue_spotlights_url, params: { cue_spotlight: { references: @cue_spotlight.references } }
    end

    assert_redirected_to cue_spotlight_url(CueSpotlight.last)
  end

  test "should show cue_spotlight" do
    get cue_spotlight_url(@cue_spotlight)
    assert_response :success
  end

  test "should get edit" do
    get edit_cue_spotlight_url(@cue_spotlight)
    assert_response :success
  end

  test "should update cue_spotlight" do
    patch cue_spotlight_url(@cue_spotlight), params: { cue_spotlight: { references: @cue_spotlight.references } }
    assert_redirected_to cue_spotlight_url(@cue_spotlight)
  end

  test "should destroy cue_spotlight" do
    assert_difference('CueSpotlight.count', -1) do
      delete cue_spotlight_url(@cue_spotlight)
    end

    assert_redirected_to cue_spotlights_url
  end
end
