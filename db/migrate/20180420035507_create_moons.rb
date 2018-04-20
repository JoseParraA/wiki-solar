class CreateMoons < ActiveRecord::Migration[5.1]
  def change
    create_table :moons do |t|
      t.text :name
      t.integer :distance_planet
      t.integer :radius_orbit_planet
      t.integer :radius_moon
      t.integer :orbit_planet
      t.text :image
      t.integer :planet_id
      t.integer :user_id

      t.timestamps
    end
  end
end
