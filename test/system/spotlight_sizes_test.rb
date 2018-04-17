require "application_system_test_case"

class SpotlightSizesTest < ApplicationSystemTestCase
  setup do
    @spotlight_size = spotlight_sizes(:one)
  end

  test "visiting the index" do
    visit spotlight_sizes_url
    assert_selector "h1", text: "Spotlight Sizes"
  end

  test "creating a Spotlight size" do
    visit spotlight_sizes_url
    click_on "New Spotlight Size"

    fill_in "Description", with: @spotlight_size.description
    fill_in "Image", with: @spotlight_size.image
    fill_in "Name", with: @spotlight_size.name
    click_on "Create Spotlight size"

    assert_text "Spotlight size was successfully created"
    click_on "Back"
  end

  test "updating a Spotlight size" do
    visit spotlight_sizes_url
    click_on "Edit", match: :first

    fill_in "Description", with: @spotlight_size.description
    fill_in "Image", with: @spotlight_size.image
    fill_in "Name", with: @spotlight_size.name
    click_on "Update Spotlight size"

    assert_text "Spotlight size was successfully updated"
    click_on "Back"
  end

  test "destroying a Spotlight size" do
    visit spotlight_sizes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spotlight size was successfully destroyed"
  end
end
