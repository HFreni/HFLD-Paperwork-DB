require "application_system_test_case"

class ColorsTest < ApplicationSystemTestCase
  setup do
    @color = colors(:one)
  end

  test "visiting the index" do
    visit colors_url
    assert_selector "h1", text: "Colors"
  end

  test "creating a Color" do
    visit colors_url
    click_on "New Color"

    fill_in "Gel Hex", with: @color.gel_hex
    fill_in "Gel Name", with: @color.gel_name
    fill_in "Gel Num", with: @color.gel_num
    fill_in "Manufacturer Fk", with: @color.manufacturer_fk
    click_on "Create Color"

    assert_text "Color was successfully created"
    click_on "Back"
  end

  test "updating a Color" do
    visit colors_url
    click_on "Edit", match: :first

    fill_in "Gel Hex", with: @color.gel_hex
    fill_in "Gel Name", with: @color.gel_name
    fill_in "Gel Num", with: @color.gel_num
    fill_in "Manufacturer Fk", with: @color.manufacturer_fk
    click_on "Update Color"

    assert_text "Color was successfully updated"
    click_on "Back"
  end

  test "destroying a Color" do
    visit colors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Color was successfully destroyed"
  end
end
