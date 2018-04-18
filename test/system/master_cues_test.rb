require "application_system_test_case"

class MasterCuesTest < ApplicationSystemTestCase
  setup do
    @master_cue = master_cues(:one)
  end

  test "visiting the index" do
    visit master_cues_url
    assert_selector "h1", text: "Master Cues"
  end

  test "creating a Master cue" do
    visit master_cues_url
    click_on "New Master Cue"

    fill_in "Cue Info", with: @master_cue.cue_info
    fill_in "Lx Cue", with: @master_cue.lx_cue
    fill_in "Scene", with: @master_cue.scene
    fill_in "Song", with: @master_cue.song
    fill_in "Spot Cue", with: @master_cue.spot_cue
    click_on "Create Master cue"

    assert_text "Master cue was successfully created"
    click_on "Back"
  end

  test "updating a Master cue" do
    visit master_cues_url
    click_on "Edit", match: :first

    fill_in "Cue Info", with: @master_cue.cue_info
    fill_in "Lx Cue", with: @master_cue.lx_cue
    fill_in "Scene", with: @master_cue.scene
    fill_in "Song", with: @master_cue.song
    fill_in "Spot Cue", with: @master_cue.spot_cue
    click_on "Update Master cue"

    assert_text "Master cue was successfully updated"
    click_on "Back"
  end

  test "destroying a Master cue" do
    visit master_cues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Master cue was successfully destroyed"
  end
end
