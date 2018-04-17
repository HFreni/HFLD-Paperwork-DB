require 'test_helper'

class CueMasterCuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cue_master_cue = cue_master_cues(:one)
  end

  test "should get index" do
    get cue_master_cues_url
    assert_response :success
  end

  test "should get new" do
    get new_cue_master_cue_url
    assert_response :success
  end

  test "should create cue_master_cue" do
    assert_difference('CueMasterCue.count') do
      post cue_master_cues_url, params: { cue_master_cue: { references: @cue_master_cue.references } }
    end

    assert_redirected_to cue_master_cue_url(CueMasterCue.last)
  end

  test "should show cue_master_cue" do
    get cue_master_cue_url(@cue_master_cue)
    assert_response :success
  end

  test "should get edit" do
    get edit_cue_master_cue_url(@cue_master_cue)
    assert_response :success
  end

  test "should update cue_master_cue" do
    patch cue_master_cue_url(@cue_master_cue), params: { cue_master_cue: { references: @cue_master_cue.references } }
    assert_redirected_to cue_master_cue_url(@cue_master_cue)
  end

  test "should destroy cue_master_cue" do
    assert_difference('CueMasterCue.count', -1) do
      delete cue_master_cue_url(@cue_master_cue)
    end

    assert_redirected_to cue_master_cues_url
  end
end
