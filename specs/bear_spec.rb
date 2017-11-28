require('minitest/autorun')
require('minitest/rg')
require_relative('../bear.rb')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestBear < MiniTest::Test

  def setup()
    @fish3 = Fish.new("Namor")
    @fish2 = Fish.new("Fin")
    @fish1 = Fish.new("Nemo")
    @bear = Bear.new("Yogi", [])
  end

def test_bear_has_a_name()
  assert_equal("Yogi", @bear.name())
end

def test_roar()
  assert_equal("Roar", @bear.roar())
end

def test_stomach_empty()
  assert_equal(0, @stomach.fish_count())
end

def test_add_fish_in_stomach()
  @bear.pick_up(@fish1)
  assert_equal(1, @stomach.fish_count())
end

end
