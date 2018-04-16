require "application_system_test_case"

class ColorFramesTest < ApplicationSystemTestCase
  setup do
    @color_frame = color_frames(:one)
  end

  test "visiting the index" do
    visit color_frames_url
    assert_selector "h1", text: "Color Frames"
  end

  test "creating a Color frame" do
    visit color_frames_url
    click_on "New Color Frame"

    fill_in "Color", with: @color_frame.color_id
    fill_in "Frame Position", with: @color_frame.frame_position
    fill_in "Spotlight", with: @color_frame.spotlight_id
    click_on "Create Color frame"

    assert_text "Color frame was successfully created"
    click_on "Back"
  end

  test "updating a Color frame" do
    visit color_frames_url
    click_on "Edit", match: :first

    fill_in "Color", with: @color_frame.color_id
    fill_in "Frame Position", with: @color_frame.frame_position
    fill_in "Spotlight", with: @color_frame.spotlight_id
    click_on "Update Color frame"

    assert_text "Color frame was successfully updated"
    click_on "Back"
  end

  test "destroying a Color frame" do
    visit color_frames_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Color frame was successfully destroyed"
  end
end
