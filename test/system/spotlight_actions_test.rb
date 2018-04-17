require "application_system_test_case"

class SpotlightActionsTest < ApplicationSystemTestCase
  setup do
    @spotlight_action = spotlight_actions(:one)
  end

  test "visiting the index" do
    visit spotlight_actions_url
    assert_selector "h1", text: "Spotlight Actions"
  end

  test "creating a Spotlight action" do
    visit spotlight_actions_url
    click_on "New Spotlight Action"

    fill_in "Image", with: @spotlight_action.image
    fill_in "Name", with: @spotlight_action.name
    click_on "Create Spotlight action"

    assert_text "Spotlight action was successfully created"
    click_on "Back"
  end

  test "updating a Spotlight action" do
    visit spotlight_actions_url
    click_on "Edit", match: :first

    fill_in "Image", with: @spotlight_action.image
    fill_in "Name", with: @spotlight_action.name
    click_on "Update Spotlight action"

    assert_text "Spotlight action was successfully updated"
    click_on "Back"
  end

  test "destroying a Spotlight action" do
    visit spotlight_actions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spotlight action was successfully destroyed"
  end
end
