require "application_system_test_case"

class SpotlightCuesTest < ApplicationSystemTestCase
  setup do
    @spotlight_cue = spotlight_cues(:one)
  end

  test "visiting the index" do
    visit spotlight_cues_url
    assert_selector "h1", text: "Spotlight Cues"
  end

  test "creating a Spotlight cue" do
    visit spotlight_cues_url
    click_on "New Spotlight Cue"

    fill_in "Action", with: @spotlight_cue.action_id
    fill_in "Color", with: @spotlight_cue.color_id
    fill_in "Description", with: @spotlight_cue.description
    fill_in "Intensity", with: @spotlight_cue.intensity_id
    fill_in "Size", with: @spotlight_cue.size_id
    fill_in "Time", with: @spotlight_cue.time
    click_on "Create Spotlight cue"

    assert_text "Spotlight cue was successfully created"
    click_on "Back"
  end

  test "updating a Spotlight cue" do
    visit spotlight_cues_url
    click_on "Edit", match: :first

    fill_in "Action", with: @spotlight_cue.action_id
    fill_in "Color", with: @spotlight_cue.color_id
    fill_in "Description", with: @spotlight_cue.description
    fill_in "Intensity", with: @spotlight_cue.intensity_id
    fill_in "Size", with: @spotlight_cue.size_id
    fill_in "Time", with: @spotlight_cue.time
    click_on "Update Spotlight cue"

    assert_text "Spotlight cue was successfully updated"
    click_on "Back"
  end

  test "destroying a Spotlight cue" do
    visit spotlight_cues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spotlight cue was successfully destroyed"
  end
end
