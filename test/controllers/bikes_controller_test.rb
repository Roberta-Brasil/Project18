require 'test_helper'

class BikesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bike = bikes(:one)
  end

  test "should get index" do
    get bikes_url
    assert_response :success
  end

  test "should get new" do
    get new_bike_url
    assert_response :success
  end

  test "should create bike" do
    assert_difference('Bike.count') do
      post bikes_url, params: { bike: { availability: @bike.availability, brand: @bike.brand, colour: @bike.colour, gender: @bike.gender, image_url: @bike.image_url, location: @bike.location, model: @bike.model, price: @bike.price, size: @bike.size, type: @bike.type } }
    end

    assert_redirected_to bike_url(Bike.last)
  end

  test "should show bike" do
    get bike_url(@bike)
    assert_response :success
  end

  test "should get edit" do
    get edit_bike_url(@bike)
    assert_response :success
  end

  test "should update bike" do
    patch bike_url(@bike), params: { bike: { availability: @bike.availability, brand: @bike.brand, colour: @bike.colour, gender: @bike.gender, image_url: @bike.image_url, location: @bike.location, model: @bike.model, price: @bike.price, size: @bike.size, type: @bike.type } }
    assert_redirected_to bike_url(@bike)
  end

  test "should destroy bike" do
    assert_difference('Bike.count', -1) do
      delete bike_url(@bike)
    end

    assert_redirected_to bikes_url
  end
end
