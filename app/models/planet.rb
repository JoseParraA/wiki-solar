# == Schema Information
#
# Table name: planets
#
#  id            :integer          not null, primary key
#  name          :text
#  distance_sun  :float
#  radius_orbit  :float
#  radius_planet :float
#  orbit_sun     :float
#  num_moon      :integer
#  image         :text
#  info          :text
#  moon_id       :integer
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Planet < ApplicationRecord
  has_many :moons
end
