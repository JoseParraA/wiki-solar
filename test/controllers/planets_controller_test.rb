require 'test_helper'

class PlanetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planet = planets(:one)
  end

  test "should get index" do
    get planets_url
    assert_response :success
  end

  test "should get new" do
    get new_planet_url
    assert_response :success
  end

  test "should create planet" do
    assert_difference('Planet.count') do
      post planets_url, params: { planet: { distance_sun: @planet.distance_sun, image: @planet.image, moon_id: @planet.moon_id, name: @planet.name, num_moon: @planet.num_moon, orbit_sun: @planet.orbit_sun, radius_orbit: @planet.radius_orbit, radius_planet: @planet.radius_planet, user_id: @planet.user_id } }
    end

    assert_redirected_to planet_url(Planet.last)
  end

  test "should show planet" do
    get planet_url(@planet)
    assert_response :success
  end

  test "should get edit" do
    get edit_planet_url(@planet)
    assert_response :success
  end

  test "should update planet" do
    patch planet_url(@planet), params: { planet: { distance_sun: @planet.distance_sun, image: @planet.image, moon_id: @planet.moon_id, name: @planet.name, num_moon: @planet.num_moon, orbit_sun: @planet.orbit_sun, radius_orbit: @planet.radius_orbit, radius_planet: @planet.radius_planet, user_id: @planet.user_id } }
    assert_redirected_to planet_url(@planet)
  end

  test "should destroy planet" do
    assert_difference('Planet.count', -1) do
      delete planet_url(@planet)
    end

    assert_redirected_to planets_url
  end
end
