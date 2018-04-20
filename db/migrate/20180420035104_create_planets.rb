class CreatePlanets < ActiveRecord::Migration[5.1]
  def change
    create_table :planets do |t|
      t.text :name
      t.float :distance_sun
      t.float :radius_orbit
      t.float :radius_planet
      t.float :orbit_sun
      t.integer :num_moon
      t.text :image
      t.text :info
      t.integer :moon_id
      t.integer :user_id

      t.timestamps
    end
  end
end
