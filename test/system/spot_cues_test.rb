require "application_system_test_case"

class SpotCuesTest < ApplicationSystemTestCase
  setup do
    @spot_cue = spot_cues(:one)
  end

  test "visiting the index" do
    visit spot_cues_url
    assert_selector "h1", text: "Spot Cues"
  end

  test "creating a Spot cue" do
    visit spot_cues_url
    click_on "New Spot Cue"

    fill_in "Light Cue Number", with: @spot_cue.light_cue_number
    fill_in "Name", with: @spot_cue.name
    fill_in "Notes", with: @spot_cue.notes
    fill_in "Number", with: @spot_cue.number
    fill_in "Type", with: @spot_cue.type
    click_on "Create Spot cue"

    assert_text "Spot cue was successfully created"
    click_on "Back"
  end

  test "updating a Spot cue" do
    visit spot_cues_url
    click_on "Edit", match: :first

    fill_in "Light Cue Number", with: @spot_cue.light_cue_number
    fill_in "Name", with: @spot_cue.name
    fill_in "Notes", with: @spot_cue.notes
    fill_in "Number", with: @spot_cue.number
    fill_in "Type", with: @spot_cue.type
    click_on "Update Spot cue"

    assert_text "Spot cue was successfully updated"
    click_on "Back"
  end

  test "destroying a Spot cue" do
    visit spot_cues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spot cue was successfully destroyed"
  end
end
