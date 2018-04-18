require "application_system_test_case"

class SpotlightIntensitiesTest < ApplicationSystemTestCase
  setup do
    @spotlight_intensity = spotlight_intensities(:one)
  end

  test "visiting the index" do
    visit spotlight_intensities_url
    assert_selector "h1", text: "Spotlight Intensities"
  end

  test "creating a Spotlight intensity" do
    visit spotlight_intensities_url
    click_on "New Spotlight Intensity"

    fill_in "Intensity", with: @spotlight_intensity.intensity
    fill_in "Name", with: @spotlight_intensity.name
    click_on "Create Spotlight intensity"

    assert_text "Spotlight intensity was successfully created"
    click_on "Back"
  end

  test "updating a Spotlight intensity" do
    visit spotlight_intensities_url
    click_on "Edit", match: :first

    fill_in "Intensity", with: @spotlight_intensity.intensity
    fill_in "Name", with: @spotlight_intensity.name
    click_on "Update Spotlight intensity"

    assert_text "Spotlight intensity was successfully updated"
    click_on "Back"
  end

  test "destroying a Spotlight intensity" do
    visit spotlight_intensities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spotlight intensity was successfully destroyed"
  end
end
