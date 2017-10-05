require 'test_helper'

class BikeModalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bike_modal = bike_modals(:one)
  end

  test "should get index" do
    get bike_modals_url
    assert_response :success
  end

  test "should get new" do
    get new_bike_modal_url
    assert_response :success
  end

  test "should create bike_modal" do
    assert_difference('BikeModal.count') do
      post bike_modals_url, params: { bike_modal: { name: @bike_modal.name } }
    end

    assert_redirected_to bike_modal_url(BikeModal.last)
  end

  test "should show bike_modal" do
    get bike_modal_url(@bike_modal)
    assert_response :success
  end

  test "should get edit" do
    get edit_bike_modal_url(@bike_modal)
    assert_response :success
  end

  test "should update bike_modal" do
    patch bike_modal_url(@bike_modal), params: { bike_modal: { name: @bike_modal.name } }
    assert_redirected_to bike_modal_url(@bike_modal)
  end

  test "should destroy bike_modal" do
    assert_difference('BikeModal.count', -1) do
      delete bike_modal_url(@bike_modal)
    end

    assert_redirected_to bike_modals_url
  end
end
