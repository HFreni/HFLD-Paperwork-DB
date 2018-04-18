require 'test_helper'

class SpotlightIntensitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spotlight_intensity = spotlight_intensities(:one)
  end

  test "should get index" do
    get spotlight_intensities_url
    assert_response :success
  end

  test "should get new" do
    get new_spotlight_intensity_url
    assert_response :success
  end

  test "should create spotlight_intensity" do
    assert_difference('SpotlightIntensity.count') do
      post spotlight_intensities_url, params: { spotlight_intensity: { intensity: @spotlight_intensity.intensity, name: @spotlight_intensity.name } }
    end

    assert_redirected_to spotlight_intensity_url(SpotlightIntensity.last)
  end

  test "should show spotlight_intensity" do
    get spotlight_intensity_url(@spotlight_intensity)
    assert_response :success
  end

  test "should get edit" do
    get edit_spotlight_intensity_url(@spotlight_intensity)
    assert_response :success
  end

  test "should update spotlight_intensity" do
    patch spotlight_intensity_url(@spotlight_intensity), params: { spotlight_intensity: { intensity: @spotlight_intensity.intensity, name: @spotlight_intensity.name } }
    assert_redirected_to spotlight_intensity_url(@spotlight_intensity)
  end

  test "should destroy spotlight_intensity" do
    assert_difference('SpotlightIntensity.count', -1) do
      delete spotlight_intensity_url(@spotlight_intensity)
    end

    assert_redirected_to spotlight_intensities_url
  end
end
