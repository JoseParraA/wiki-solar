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

require 'test_helper'

class MoonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
