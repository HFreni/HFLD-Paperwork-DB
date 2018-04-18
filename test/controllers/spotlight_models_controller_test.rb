require 'test_helper'

class SpotlightModelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spotlight_model = spotlight_models(:one)
  end

  test "should get index" do
    get spotlight_models_url
    assert_response :success
  end

  test "should get new" do
    get new_spotlight_model_url
    assert_response :success
  end

  test "should create spotlight_model" do
    assert_difference('SpotlightModel.count') do
      post spotlight_models_url, params: { spotlight_model: { manufacturer: @spotlight_model.manufacturer, spotlight_name: @spotlight_model.spotlight_name, spotlight_weight: @spotlight_model.spotlight_weight } }
    end

    assert_redirected_to spotlight_model_url(SpotlightModel.last)
  end

  test "should show spotlight_model" do
    get spotlight_model_url(@spotlight_model)
    assert_response :success
  end

  test "should get edit" do
    get edit_spotlight_model_url(@spotlight_model)
    assert_response :success
  end

  test "should update spotlight_model" do
    patch spotlight_model_url(@spotlight_model), params: { spotlight_model: { manufacturer: @spotlight_model.manufacturer, spotlight_name: @spotlight_model.spotlight_name, spotlight_weight: @spotlight_model.spotlight_weight } }
    assert_redirected_to spotlight_model_url(@spotlight_model)
  end

  test "should destroy spotlight_model" do
    assert_difference('SpotlightModel.count', -1) do
      delete spotlight_model_url(@spotlight_model)
    end

    assert_redirected_to spotlight_models_url
  end
end
