require "application_system_test_case"

class SpotlightsTest < ApplicationSystemTestCase
  setup do
    @spotlight = spotlights(:one)
  end

  test "visiting the index" do
    visit spotlights_url
    assert_selector "h1", text: "Spotlights"
  end

  test "creating a Spotlight" do
    visit spotlights_url
    click_on "New Spotlight"

    fill_in "Spotlight Model Fk", with: @spotlight.spotlight_model_fk
    fill_in "Spotlight Name", with: @spotlight.spotlight_name
    fill_in "Spotlight Notes", with: @spotlight.spotlight_notes
    fill_in "Spotlight Op Fk", with: @spotlight.spotlight_op_fk
    fill_in "Spotlight Position Fk", with: @spotlight.spotlight_position_fk
    click_on "Create Spotlight"

    assert_text "Spotlight was successfully created"
    click_on "Back"
  end

  test "updating a Spotlight" do
    visit spotlights_url
    click_on "Edit", match: :first

    fill_in "Spotlight Model Fk", with: @spotlight.spotlight_model_fk
    fill_in "Spotlight Name", with: @spotlight.spotlight_name
    fill_in "Spotlight Notes", with: @spotlight.spotlight_notes
    fill_in "Spotlight Op Fk", with: @spotlight.spotlight_op_fk
    fill_in "Spotlight Position Fk", with: @spotlight.spotlight_position_fk
    click_on "Update Spotlight"

    assert_text "Spotlight was successfully updated"
    click_on "Back"
  end

  test "destroying a Spotlight" do
    visit spotlights_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spotlight was successfully destroyed"
  end
end
