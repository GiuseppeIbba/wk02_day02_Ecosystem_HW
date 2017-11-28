require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')

class TestRiver < MiniTest::Test

  def setup()
    @fish9 = Fish.new("Namor")
    @fish8 = Fish.new("Fin")
    @fish7 = Fish.new("Nemo")
    @fish6 = Fish.new("Shang")
    @fish5 = Fish.new("Sindel")
    @fish4 = Fish.new("Janemba")
    @fish3 = Fish.new("Flipper")
    @fish2 = Fish.new("Akuma")
    @fish1 = Fish.new("Screech")
    @river = River.new("Amazon", [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6, @fish7, @fish8, @fish9])
  end

  def test_river_has_a_name()
    assert_equal("Amazon", @river.name())
  end

  def test_add_fish()
    @river.add_fish(@fish1)
    assert_equal(10, @river.fish_count())
  end



end
