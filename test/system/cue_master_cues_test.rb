require "application_system_test_case"

class CueMasterCuesTest < ApplicationSystemTestCase
  setup do
    @cue_master_cue = cue_master_cues(:one)
  end

  test "visiting the index" do
    visit cue_master_cues_url
    assert_selector "h1", text: "Cue Master Cues"
  end

  test "creating a Cue master cue" do
    visit cue_master_cues_url
    click_on "New Cue Master Cue"

    fill_in "References", with: @cue_master_cue.references
    click_on "Create Cue master cue"

    assert_text "Cue master cue was successfully created"
    click_on "Back"
  end

  test "updating a Cue master cue" do
    visit cue_master_cues_url
    click_on "Edit", match: :first

    fill_in "References", with: @cue_master_cue.references
    click_on "Update Cue master cue"

    assert_text "Cue master cue was successfully updated"
    click_on "Back"
  end

  test "destroying a Cue master cue" do
    visit cue_master_cues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cue master cue was successfully destroyed"
  end
end
