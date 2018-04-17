require "application_system_test_case"

class CueSpotlightsTest < ApplicationSystemTestCase
  setup do
    @cue_spotlight = cue_spotlights(:one)
  end

  test "visiting the index" do
    visit cue_spotlights_url
    assert_selector "h1", text: "Cue Spotlights"
  end

  test "creating a Cue spotlight" do
    visit cue_spotlights_url
    click_on "New Cue Spotlight"

    fill_in "References", with: @cue_spotlight.references
    click_on "Create Cue spotlight"

    assert_text "Cue spotlight was successfully created"
    click_on "Back"
  end

  test "updating a Cue spotlight" do
    visit cue_spotlights_url
    click_on "Edit", match: :first

    fill_in "References", with: @cue_spotlight.references
    click_on "Update Cue spotlight"

    assert_text "Cue spotlight was successfully updated"
    click_on "Back"
  end

  test "destroying a Cue spotlight" do
    visit cue_spotlights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cue spotlight was successfully destroyed"
  end
end
