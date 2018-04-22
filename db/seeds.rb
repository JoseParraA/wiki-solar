### USERS ###
# t.text :name
# t.text :email
# t.string :password_digest
# t.boolean :admin
User.destroy_all
u1 = User.create(:name => 'Jose P', :email => '100@abc.com', :admin => true)
u2 = User.create(:name => 'Sam C', :email => '200@abc.com', :admin => true)
u3 = User.create(:name => 'Morgan G ', :email => '300@abc.com', :admin => true)
u4 = User.create(:name => 'Sally Jones', :email => '400@abc.com')
u5 = User.create(:name => 'Megan Long', :email => '500@abc.com')
u6 = User.create(:name => 'Tom Shaws', :email => '600@abc.com')

### PLANETS ###
#  name          :text
#  distance_sun  :float
#  radius_orbit  :float
#  radius_planet :float
#  orbit_sun     :float
#  num_moon      :integer
#  image         :text
#  moon_id       :integer
#  user_id       :integer
Planet.destroy_all
p1 = Planet.create(:name => 'Mercury', :distance_sun => 57.91, :radius_orbit => 0.21, :radius_planet => 2440, :orbit_sun => 0.24, :num_moon => 0, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Mercury_in_color_-_Prockter07-edit1.jpg/450px-Mercury_in_color_-_Prockter07-edit1.jpg')
p2 = Planet.create(:name => 'Venus', :distance_sun => 108.2, :radius_orbit => 0.72, :radius_planet => 6052, :orbit_sun => 0.61, :num_moon => 0, :image =>'https://upload.wikimedia.org/wikipedia/commons/e/e5/Venus-real_color.jpg')
p3 = Planet.create(:name => 'Earth', :distance_sun => 149.6, :radius_orbit => 0.0167, :radius_planet => 6371, :orbit_sun => 1, :num_moon => 1, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/450px-The_Earth_seen_from_Apollo_17.jpg')
p4 = Planet.create(:name => 'Mars', :distance_sun => 227.9, :radius_orbit => 9.55, :radius_planet => 3390, :orbit_sun => 1.88, :num_moon => 2, :image =>'https://upload.wikimedia.org/wikipedia/commons/0/02/OSIRIS_Mars_true_color.jpg')
p5 = Planet.create(:name => 'Jupiter', :distance_sun => 778.5, :radius_orbit => 5.2, :radius_planet => 69911, :orbit_sun => 12, :num_moon => 69, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg/660px-Jupiter_and_its_shrunken_Great_Red_Spot.jpg')
p6 = Planet.create(:name => 'Saturn', :distance_sun => 1433, :radius_orbit => 9, :radius_planet => 58232, :orbit_sun => 29, :num_moon => 53, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Saturn_during_Equinox.jpg/660px-Saturn_during_Equinox.jpg')
p7 = Planet.create(:name => 'Uranus', :distance_sun => 2871, :radius_orbit => 20, :radius_planet => 25362, :orbit_sun => 84, :num_moon => 27, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Uranus2.jpg/520px-Uranus2.jpg')
p8 = Planet.create(:name => 'Neptune', :distance_sun => 4495, :radius_orbit => 30.1, :radius_planet => 24622, :orbit_sun => 164, :num_moon => 14, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Neptune_Full.jpg/550px-Neptune_Full.jpg')
p9 = Planet.create(:name => 'Pluto', :distance_sun => 5984, :radius_orbit => 30.1, :radius_planet => 1188, :orbit_sun => 248, :num_moon => 5, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Neptune_Full.jpg/550px-Neptune_Full.jpg')

### MOONS ###
# t.text :name
# t.float :distance_planet
# t.float :radius_orbit_planet
# t.float :radius_moon
# t.float :orbit_planet
# t.text :image
# t.text :info
# t.integer :planet_id
# t.integer :user_id
Moon.destroy_all
m1 = Moon.create(:name => 'Moon', :distance_planet => 384400, :radius_moon => 1737, :orbit_planet => 24, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/FullMoon2010.jpg/450px-FullMoon2010.jpg')
m2 = Moon.create(:name => 'Phobos', :distance_planet => 9380, :radius_moon => 11, :orbit_planet => 8, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Phobos_colour_2008.jpg/400px-Phobos_colour_2008.jpg')
m3 = Moon.create(:name => 'Deimos', :distance_planet => 23460, :radius_moon => 6, :orbit_planet => 30, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Deimos-MRO.jpg/392px-Deimos-MRO.jpg')
m4 = Moon.create(:name => 'Io', :distance_planet => 422000, :radius_moon => 1822, :orbit_planet => 42, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Io_highest_resolution_true_color.jpg/450px-Io_highest_resolution_true_color.jpg')
m5 = Moon.create(:name => 'Europa', :distance_planet => 670900, :radius_moon => 1561, :orbit_planet => 85, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Europa-moon.jpg/450px-Europa-moon.jpg')
m6 = Moon.create(:name => 'Ganymede', :distance_planet => 1070000, :radius_moon => 2634, :orbit_planet => 172, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Ganymede_g1_true-edit1.jpg/450px-Ganymede_g1_true-edit1.jpg')
m7 = Moon.create(:name => 'Callisto', :distance_planet => 1880000, :radius_moon => 2410, :orbit_planet => 408, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Callisto.jpg/442px-Callisto.jpg')
m8 = Moon.create(:name => 'Titan', :distance_planet => 1221850, :radius_moon => 2576, :orbit_planet => 384, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Titan_in_true_color.jpg/450px-Titan_in_true_color.jpg')
m9 = Moon.create(:name => 'Enceladus', :distance_planet => 238000, :radius_moon => 252, :orbit_planet => 33, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/PIA17202_-_Approaching_Enceladus.jpg/560px-PIA17202_-_Approaching_Enceladus.jpg')
m10 = Moon.create(:name => 'Mimas', :distance_planet => 238000, :radius_moon => 198, :orbit_planet => 23, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Mimas_Cassini.jpg/450px-Mimas_Cassini.jpg')
m11 = Moon.create(:name => 'Dione', :distance_planet => 377400, :radius_moon => 561, :orbit_planet => 66, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Dione_in_natural_light.jpg/450px-Dione_in_natural_light.jpg')

### RELATIONSHIPS ###
# Earth
p3.moons << m1
# Mars
p4.moons << m2 << m3
# Jupiter
p5.moons << m4 << m5 << m6 << m7
# Saturn
p6.moons << m8 << m9 << m10 << m11
