require 'test_helper'

class MasterCuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @master_cue = master_cues(:one)
  end

  test "should get index" do
    get master_cues_url
    assert_response :success
  end

  test "should get new" do
    get new_master_cue_url
    assert_response :success
  end

  test "should create master_cue" do
    assert_difference('MasterCue.count') do
      post master_cues_url, params: { master_cue: { cue_info: @master_cue.cue_info, lx_cue: @master_cue.lx_cue, scene: @master_cue.scene, song: @master_cue.song, spot_cue: @master_cue.spot_cue } }
    end

    assert_redirected_to master_cue_url(MasterCue.last)
  end

  test "should show master_cue" do
    get master_cue_url(@master_cue)
    assert_response :success
  end

  test "should get edit" do
    get edit_master_cue_url(@master_cue)
    assert_response :success
  end

  test "should update master_cue" do
    patch master_cue_url(@master_cue), params: { master_cue: { cue_info: @master_cue.cue_info, lx_cue: @master_cue.lx_cue, scene: @master_cue.scene, song: @master_cue.song, spot_cue: @master_cue.spot_cue } }
    assert_redirected_to master_cue_url(@master_cue)
  end

  test "should destroy master_cue" do
    assert_difference('MasterCue.count', -1) do
      delete master_cue_url(@master_cue)
    end

    assert_redirected_to master_cues_url
  end
end
