require "minitest/autorun"
require_relative "rocket"

class RocketTest < Minitest::Test
  def setup
    @rocket = Rocket.new
  end

  def test_name_updater
    @rocket.name = 'Cat'
    expected = 'Cat'
    actual = @rocket.name
    assert_equal(expected, actual)
  end

  def test_colour_updater
    @rocket.colour = 'blue'
    expected = 'blue'
    actual = @rocket.colour
    assert_equal(expected, actual)
  end

  def test_lift_off
    @rocket.lift_off
    expected = true
    actual = @rocket.flying?
    assert actual
  end

  def test_landing
    @rocket.lift_off
    @rocket.land
    expected = false
    actual = @rocket.flying?
    assert_equal(expected, actual)
  end
end
