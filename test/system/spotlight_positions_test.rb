require "application_system_test_case"

class SpotlightPositionsTest < ApplicationSystemTestCase
  setup do
    @spotlight_position = spotlight_positions(:one)
  end

  test "visiting the index" do
    visit spotlight_positions_url
    assert_selector "h1", text: "Spotlight Positions"
  end

  test "creating a Spotlight position" do
    visit spotlight_positions_url
    click_on "New Spotlight Position"

    fill_in "Position Name", with: @spotlight_position.position_name
    click_on "Create Spotlight position"

    assert_text "Spotlight position was successfully created"
    click_on "Back"
  end

  test "updating a Spotlight position" do
    visit spotlight_positions_url
    click_on "Edit", match: :first

    fill_in "Position Name", with: @spotlight_position.position_name
    click_on "Update Spotlight position"

    assert_text "Spotlight position was successfully updated"
    click_on "Back"
  end

  test "destroying a Spotlight position" do
    visit spotlight_positions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spotlight position was successfully destroyed"
  end
end
