# == Schema Information
#
# Table name: moons
#
#  id                  :integer          not null, primary key
#  name                :text
#  distance_planet     :float
#  radius_orbit_planet :float
#  radius_moon         :float
#  orbit_planet        :float
#  image               :text
#  info                :text
#  planet_id           :integer
#  user_id             :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Moon < ApplicationRecord
  belongs_to :planet, :optional => true
end
