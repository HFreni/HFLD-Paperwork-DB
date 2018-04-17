require "application_system_test_case"

class SpotlightModelsTest < ApplicationSystemTestCase
  setup do
    @spotlight_model = spotlight_models(:one)
  end

  test "visiting the index" do
    visit spotlight_models_url
    assert_selector "h1", text: "Spotlight Models"
  end

  test "creating a Spotlight model" do
    visit spotlight_models_url
    click_on "New Spotlight Model"

    fill_in "Manufacturer", with: @spotlight_model.manufacturer
    fill_in "Spotlight Name", with: @spotlight_model.spotlight_name
    fill_in "Spotlight Weight", with: @spotlight_model.spotlight_weight
    click_on "Create Spotlight model"

    assert_text "Spotlight model was successfully created"
    click_on "Back"
  end

  test "updating a Spotlight model" do
    visit spotlight_models_url
    click_on "Edit", match: :first

    fill_in "Manufacturer", with: @spotlight_model.manufacturer
    fill_in "Spotlight Name", with: @spotlight_model.spotlight_name
    fill_in "Spotlight Weight", with: @spotlight_model.spotlight_weight
    click_on "Update Spotlight model"

    assert_text "Spotlight model was successfully updated"
    click_on "Back"
  end

  test "destroying a Spotlight model" do
    visit spotlight_models_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spotlight model was successfully destroyed"
  end
end
