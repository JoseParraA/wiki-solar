json.extract! planet, :id, :name, :distance_sun, :radius_orbit, :radius_planet, :orbit_sun, :num_moon, :image, :moon_id, :user_id, :created_at, :updated_at
json.url planet_url(planet, format: :json)
