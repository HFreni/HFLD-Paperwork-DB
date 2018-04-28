require 'test_helper'

class SpotCuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spot_cue = spot_cues(:one)
  end

  test "should get index" do
    get spot_cues_url
    assert_response :success
  end

  test "should get new" do
    get new_spot_cue_url
    assert_response :success
  end

  test "should create spot_cue" do
    assert_difference('SpotCue.count') do
      post spot_cues_url, params: { spot_cue: { light_cue_number: @spot_cue.light_cue_number, name: @spot_cue.name, notes: @spot_cue.notes, number: @spot_cue.number, type: @spot_cue.type } }
    end

    assert_redirected_to spot_cue_url(SpotCue.last)
  end

  test "should show spot_cue" do
    get spot_cue_url(@spot_cue)
    assert_response :success
  end

  test "should get edit" do
    get edit_spot_cue_url(@spot_cue)
    assert_response :success
  end

  test "should update spot_cue" do
    patch spot_cue_url(@spot_cue), params: { spot_cue: { light_cue_number: @spot_cue.light_cue_number, name: @spot_cue.name, notes: @spot_cue.notes, number: @spot_cue.number, type: @spot_cue.type } }
    assert_redirected_to spot_cue_url(@spot_cue)
  end

  test "should destroy spot_cue" do
    assert_difference('SpotCue.count', -1) do
      delete spot_cue_url(@spot_cue)
    end

    assert_redirected_to spot_cues_url
  end
end
