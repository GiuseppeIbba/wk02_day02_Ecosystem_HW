require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestBear < MiniTest::Test

  def setup()
    @river = River.new("Amazon", @fishes)
    @bear = Bear.new("Yogi", @fishes)
  end

def test_bear_has_a_name()
  assert_equal("Yogi", @bear.name())
end

def test_roar()
  assert_equal("Roar", @bear.roar())
end

def test_caught_fish()
  @bear.caught_fish(@fish4)
  assert_equal(1, @bear.food_count())
end


end
