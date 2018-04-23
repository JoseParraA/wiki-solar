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
#  text          :info
#  moon_id       :integer
#  user_id       :integer
Planet.destroy_all
p1 = Planet.create(:name => 'Mercury', :distance_sun => 57.91, :radius_orbit => 0.21, :radius_planet => 2440, :orbit_sun => 0.24, :num_moon => 0, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d9/Mercury_in_color_-_Prockter07-edit1.jpg/450px-Mercury_in_color_-_Prockter07-edit1.jpg', :info => 'Mercury is the smallest and innermost planet in the Solar System. Its orbital period around the Sun of 87.97 days is the shortest of all the planets in the Solar System. It is named after the Roman deity Mercury, the messenger of the gods. Like Venus, Mercury orbits the Sun within Earth.')

p2 = Planet.create(:name => 'Venus', :distance_sun => 108.2, :radius_orbit => 0.72, :radius_planet => 6052, :orbit_sun => 0.61, :num_moon => 0, :image =>'https://upload.wikimedia.org/wikipedia/commons/e/e5/Venus-real_color.jpg', :info => 'Venus is the second planet from the Sun, orbiting it every 224.7 Earth days.[12] It has the longest rotation period (243 days) of any planet in the Solar System and rotates in the opposite direction to most other planets meaning the Sun would rise in the west and set in the east).[13] It does not have any natural satellites.')

p3 = Planet.create(:name => 'Earth', :distance_sun => 149.6, :radius_orbit => 0.0167, :radius_planet => 6371, :orbit_sun => 1, :num_moon => 1, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/9/97/The_Earth_seen_from_Apollo_17.jpg/450px-The_Earth_seen_from_Apollo_17.jpg', :info => 'Earth is the third planet from the Sun and the only object in the Universe known to harbor life. According to radiometric dating and other sources of evidence, Earth formed over 4.5 billion years ago.[24][25][26] Earths gravity interacts with other objects in space, especially the Sun and the Moon, Earths only natural satellite. Earth revolves around the Sun in 365.26 days, a period known as an Earth year. During this time, Earth rotates about its axis about 366.26 times.[n 5]')

p4 = Planet.create(:name => 'Mars', :distance_sun => 227.9, :radius_orbit => 9.55, :radius_planet => 3390, :orbit_sun => 1.88, :num_moon => 2, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/0/02/OSIRIS_Mars_true_color.jpg/550px-OSIRIS_Mars_true_color.jpg', :info => 'Mars is the fourth planet from the Sun and the second-smallest planet in the Solar System after Mercury. In English, Mars carries a name of the Roman god of war, and is often referred to as the "Red Planet"[14][15] because the reddish iron oxide prevalent on its surface gives it a reddish appearance that is distinctive among the astronomical bodies visible to the naked eye.[16] Mars is a terrestrial planet with a thin atmosphere, having surface features reminiscent both of the impact craters of the Moon and the valleys, deserts, and polar ice caps of Earth.')

p5 = Planet.create(:name => 'Jupiter', :distance_sun => 778.5, :radius_orbit => 5.2, :radius_planet => 69911, :orbit_sun => 12, :num_moon => 69, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg/660px-Jupiter_and_its_shrunken_Great_Red_Spot.jpg', :info => 'Jupiter is the fifth planet from the Sun and the largest in the Solar System. It is a giant planet with a mass one-thousandth that of the Sun, but two-and-a-half times that of all the other planets in the Solar System combined. Jupiter and Saturn are gas giants; the other two giant planets, Uranus and Neptune are ice giants. Jupiter has been known to astronomers since antiquity.[13] The Romans named it after their god Jupiter.[14] When viewed from Earth, Jupiter can reach an apparent magnitude of −2.94, bright enough for its reflected light to cast shadows,[15] and making it on average the third-brightest object in the night sky after the Moon and Venus.')

p6 = Planet.create(:name => 'Saturn', :distance_sun => 1433, :radius_orbit => 9, :radius_planet => 58232, :orbit_sun => 29, :num_moon => 53, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c7/Saturn_during_Equinox.jpg/660px-Saturn_during_Equinox.jpg', :info => 'Saturn is the sixth planet from the Sun and the second-largest in the Solar System, after Jupiter. It is a gas giant with an average radius about nine times that of Earth.[10][11] It has only one-eighth the average density of Earth, but with its larger volume Saturn is over 95 times more massive.[12][13][14] Saturn is named after the Roman god of agriculture; its astronomical symbol (♄) represents the gods sickle.')

p7 = Planet.create(:name => 'Uranus', :distance_sun => 2871, :radius_orbit => 20, :radius_planet => 25362, :orbit_sun => 84, :num_moon => 27, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3d/Uranus2.jpg/520px-Uranus2.jpg', :info => 'Uranus is the seventh planet from the Sun. It has the third-largest planetary radius and fourth-largest planetary mass in the Solar System. Uranus is similar in composition to Neptune, and both have different bulk chemical composition from that of the larger gas giants Jupiter and Saturn. For this reason, scientists often classify Uranus and Neptune as "ice giants" to distinguish them from the gas giants.')

p8 = Planet.create(:name => 'Neptune', :distance_sun => 4495, :radius_orbit => 30.1, :radius_planet => 24622, :orbit_sun => 164, :num_moon => 14, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Neptune_Full.jpg/550px-Neptune_Full.jpg', :info => 'Neptune is the eighth and farthest known planet from the Sun in the Solar System. In the Solar System, it is the fourth-largest planet by diameter, the third-most-massive planet, and the densest giant planet. Neptune is 17 times the mass of Earth and is slightly more massive than its near-twin Uranus, which is 15 times the mass of Earth and slightly larger than Neptune.[d] Neptune orbits the Sun once every 164.8 years')

p9 = Planet.create(:name => 'Pluto', :distance_sun => 5984, :radius_orbit => 30.1, :radius_planet => 1188, :orbit_sun => 248, :num_moon => 5, :image =>'https://upload.wikimedia.org/wikipedia/commons/thumb/5/56/Neptune_Full.jpg/550px-Neptune_Full.jpg', :info => 'Pluto (minor-planet designation: 134340 Pluto) is a dwarf planet in the Kuiper belt, a ring of bodies beyond Neptune. It was the first Kuiper belt object to be discovered. Pluto was discovered by Clyde Tombaugh in 1930 and was originally considered to be the ninth planet from the Sun. After 1992, its status as a planet was questioned following the discovery of several objects of similar size in the Kuiper belt. In 2005, Eris, a dwarf planet in the scattered disc which is 27% more massive than Pluto, was discovered. This led the International Astronomical Union (IAU) to define the term "planet" formally in 2006, during their 26th General Assembly. That definition excluded Pluto and reclassified it as a dwarf planet.')

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
m1 = Moon.create(:name => 'Moon', :distance_planet => 384400, :radius_moon => 1737, :orbit_planet => 24, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/FullMoon2010.jpg/450px-FullMoon2010.jpg', :info => 'The Moon is an astronomical body that orbits planet Earth, and is Earths only permanent natural satellite. It is the fifth-largest natural satellite in the Solar System, and the largest among planetary satellites relative to the size of the planet that it orbits (its primary). The Moon is after Jupiters satellite Io the second-densest satellite in the Solar System among those whose densities are known.')

m2 = Moon.create(:name => 'Phobos', :distance_planet => 9380, :radius_moon => 11, :orbit_planet => 8, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/5c/Phobos_colour_2008.jpg/400px-Phobos_colour_2008.jpg', :info => 'Phobos (/ˈfoʊbəs/ FOH-bəs, /-bɒs/ -boss,[4] from Greek Φόβος; systematic designation: Mars I) is the innermost and larger of the two natural satellites of Mars,[5] the other being Deimos. Both moons were discovered in 1877 by American astronomer Asaph Hall.
Phobos is a small, irregularly shaped object with a mean radius of 11 km (7 mi),[1] and is seven times as massive as the outer moon, Deimos. Phobos is named after the Greek god Phobos, a son of Ares (Mars) and Aphrodite (Venus), and the personification of horror (cf. phobia).')

m3 = Moon.create(:name => 'Deimos', :distance_planet => 23460, :radius_moon => 6, :orbit_planet => 30, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/Deimos-MRO.jpg/392px-Deimos-MRO.jpg', :info => 'Deimos (systematic designation: Mars II)[6] is the smaller and outer of the two natural satellites of the planet Mars, the other being Phobos. Deimos has a mean radius of 6.2 km (3.9 mi)[1] and takes 30.3 hours[1] to orbit Mars. In Greek mythology, Deimos is the twin brother of Phobos and personified terror. Deimos is 23,460 km (14,580 mi) from Mars, much farther than Marss other moon, Phobos.[7]')

m4 = Moon.create(:name => 'Io', :distance_planet => 422000, :radius_moon => 1822, :orbit_planet => 42, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7b/Io_highest_resolution_true_color.jpg/450px-Io_highest_resolution_true_color.jpg', :info => 'Io (Jupiter I) is the innermost of the four Galilean moons of the planet Jupiter. It is the fourth-largest moon, has the highest density of all the moons, and has the least amount of water of any known astronomical object in the Solar System. It was discovered in 1610 and was named after the mythological character Io, a priestess of Hera who became one of Zeus lovers.')

m5 = Moon.create(:name => 'Europa', :distance_planet => 670900, :radius_moon => 1561, :orbit_planet => 85, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Europa-moon.jpg/450px-Europa-moon.jpg', :info => 'Europa /jʊəˈroʊpə/ (About this sound listen) yoor-OH-pə,[10] (Jupiter II), is the smallest of the four Galilean moons orbiting Jupiter, and the sixth-closest to the planet. It is also the sixth-largest moon in the Solar System. Europa was discovered in 1610 by Galileo Galilei[1] and was named after Europa, the legendary mother of King Minos of Crete and lover of Zeus (the Greek equivalent of the Roman god Jupiter).')

m6 = Moon.create(:name => 'Ganymede', :distance_planet => 1070000, :radius_moon => 2634, :orbit_planet => 172, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Ganymede_g1_true-edit1.jpg/450px-Ganymede_g1_true-edit1.jpg', :info => 'Ganymede /ˈɡænɪmiːd/[11] (Jupiter III) is the largest and most massive moon of Jupiter and in the Solar System. The ninth largest object in the Solar System, it is the largest without a substantial atmosphere. It has a diameter of 5,268 km (3,273 mi) and is 8% larger than the planet Mercury, although only 45% as massive.[12] Possessing a metallic core, it has the lowest moment of inertia factor of any solid body in the Solar System and is the only moon known to have a magnetic field')

m7 = Moon.create(:name => 'Callisto', :distance_planet => 1880000, :radius_moon => 2410, :orbit_planet => 408, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/Callisto.jpg/442px-Callisto.jpg', :info => 'Callisto /kəˈlɪstoʊ/[9] (Jupiter IV) is the second-largest moon of Jupiter, after Ganymede. It is the third-largest moon in the Solar System after Ganymede and Saturns largest moon Titan, and the largest object in the Solar System not to be properly differentiated. Callisto was discovered in 1610 by Galileo Galilei. At 4821 km in diameter, Callisto has about 99% the diameter of the planet Mercury but only about a third of its mass. It is the fourth Galilean moon of Jupiter by distance, with an orbital radius of about 1883000 km.[2] It is not in an orbital resonance like the three other Galilean satellites—Io.')

m8 = Moon.create(:name => 'Titan', :distance_planet => 1221850, :radius_moon => 2576, :orbit_planet => 384, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Titan_in_true_color.jpg/450px-Titan_in_true_color.jpg', :info => 'Titan is the largest moon of Saturn. It is the only moon known to have a dense atmosphere, and the only object in space other than Earth where clear evidence of stable bodies of surface liquid has been found.')

m9 = Moon.create(:name => 'Enceladus', :distance_planet => 238000, :radius_moon => 252, :orbit_planet => 33, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/83/PIA17202_-_Approaching_Enceladus.jpg/560px-PIA17202_-_Approaching_Enceladus.jpg', :info => 'Enceladus (/ɛnˈsɛlədəs/; en-SEL-ə-dəs) is the sixth-largest moon of Saturn. It is about 500 kilometers (310 mi) in diameter,[3] about a tenth of that of Saturns largest moon, Titan. Enceladus is mostly covered by fresh, clean ice, making it one of the most reflective bodies of the Solar System. Consequently, its surface temperature at noon only reaches −198 °C (−324 °F), far colder than a light-absorbing body would be.')

m10 = Moon.create(:name => 'Mimas', :distance_planet => 238000, :radius_moon => 198, :orbit_planet => 23, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/bc/Mimas_Cassini.jpg/450px-Mimas_Cassini.jpg', :info => 'Mimas is a moon of Saturn which was discovered in 1789 by William Herschel.[8] It is named after Mimas, a son of Gaia in Greek mythology, and is also designated Saturn I. With a diameter of 396 kilometres (246 mi) it is the smallest astronomical body that is known to be rounded in shape because of self-gravitation.')

m11 = Moon.create(:name => 'Dione', :distance_planet => 377400, :radius_moon => 561, :orbit_planet => 66, :image => 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/42/Dione_in_natural_light.jpg/450px-Dione_in_natural_light.jpg', :info => 'Dione (/daɪˈoʊni/ dy-OH-nee; Greek: Διώνη) is a moon of Saturn. It was discovered by Italian astronomer Giovanni Domenico Cassini in 1684.[7] It is named after the Titaness Dione of Greek mythology. It is also designated Saturn IV.')

### RELATIONSHIPS ###
# Earth
p3.moons << m1
# Mars
p4.moons << m2 << m3
# Jupiter
p5.moons << m4 << m5 << m6 << m7
# Saturn
p6.moons << m8 << m9 << m10 << m11
