require 'test_helper'

class SpotlightSizesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spotlight_size = spotlight_sizes(:one)
  end

  test "should get index" do
    get spotlight_sizes_url
    assert_response :success
  end

  test "should get new" do
    get new_spotlight_size_url
    assert_response :success
  end

  test "should create spotlight_size" do
    assert_difference('SpotlightSize.count') do
      post spotlight_sizes_url, params: { spotlight_size: { description: @spotlight_size.description, image: @spotlight_size.image, name: @spotlight_size.name } }
    end

    assert_redirected_to spotlight_size_url(SpotlightSize.last)
  end

  test "should show spotlight_size" do
    get spotlight_size_url(@spotlight_size)
    assert_response :success
  end

  test "should get edit" do
    get edit_spotlight_size_url(@spotlight_size)
    assert_response :success
  end

  test "should update spotlight_size" do
    patch spotlight_size_url(@spotlight_size), params: { spotlight_size: { description: @spotlight_size.description, image: @spotlight_size.image, name: @spotlight_size.name } }
    assert_redirected_to spotlight_size_url(@spotlight_size)
  end

  test "should destroy spotlight_size" do
    assert_difference('SpotlightSize.count', -1) do
      delete spotlight_size_url(@spotlight_size)
    end

    assert_redirected_to spotlight_sizes_url
  end
end
