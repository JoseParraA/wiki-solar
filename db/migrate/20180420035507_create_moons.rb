class CreateMoons < ActiveRecord::Migration[5.1]
  def change
    create_table :moons do |t|
      t.text :name
      t.float :distance_planet
      t.float :radius_orbit_planet
      t.float :radius_moon
      t.float :orbit_planet
      t.text :image
      t.integer :planet_id
      t.integer :user_id

      t.timestamps
    end
  end
end
