class CreatePlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.text :name
      t.integer :distance_sun
      t.integer :radius_orbit
      t.integer :radius_planet
      t.integer :orbit_sun
      t.integer :num_moon
      t.text :image
      t.integer :moon_id
      t.integer :user_id

      t.timestamps
    end
  end
end
