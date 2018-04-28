require "application_system_test_case"

class SpotCuesSpotlightsTest < ApplicationSystemTestCase
  setup do
    @spot_cues_spotlight = spot_cues_spotlights(:one)
  end

  test "visiting the index" do
    visit spot_cues_spotlights_url
    assert_selector "h1", text: "Spot Cues Spotlights"
  end

  test "creating a Spot cues spotlight" do
    visit spot_cues_spotlights_url
    click_on "New Spot Cues Spotlight"

    fill_in "Action", with: @spot_cues_spotlight.action
    fill_in "Intensity", with: @spot_cues_spotlight.intensity
    fill_in "Notes", with: @spot_cues_spotlight.notes
    fill_in "Size", with: @spot_cues_spotlight.size
    fill_in "Spot Cue", with: @spot_cues_spotlight.spot_cue_id
    fill_in "Spotlight", with: @spot_cues_spotlight.spotlight_id
    fill_in "Time", with: @spot_cues_spotlight.time
    click_on "Create Spot cues spotlight"

    assert_text "Spot cues spotlight was successfully created"
    click_on "Back"
  end

  test "updating a Spot cues spotlight" do
    visit spot_cues_spotlights_url
    click_on "Edit", match: :first

    fill_in "Action", with: @spot_cues_spotlight.action
    fill_in "Intensity", with: @spot_cues_spotlight.intensity
    fill_in "Notes", with: @spot_cues_spotlight.notes
    fill_in "Size", with: @spot_cues_spotlight.size
    fill_in "Spot Cue", with: @spot_cues_spotlight.spot_cue_id
    fill_in "Spotlight", with: @spot_cues_spotlight.spotlight_id
    fill_in "Time", with: @spot_cues_spotlight.time
    click_on "Update Spot cues spotlight"

    assert_text "Spot cues spotlight was successfully updated"
    click_on "Back"
  end

  test "destroying a Spot cues spotlight" do
    visit spot_cues_spotlights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spot cues spotlight was successfully destroyed"
  end
end
